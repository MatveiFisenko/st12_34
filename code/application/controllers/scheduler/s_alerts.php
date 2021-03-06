<?php defined('SYSPATH') or die('No direct script access.');
/**
 * Alerts Scheduler Controller
 *
 * PHP version 5
 * LICENSE: This source file is subject to LGPL license 
 * that is available through the world-wide-web at the following URI:
 * http://www.gnu.org/copyleft/lesser.html
 * @author     Ushahidi Team <team@ushahidi.com> 
 * @package    Ushahidi - http://source.ushahididev.com
 * @module     Alerts Controller  
 * @copyright  Ushahidi - http://www.ushahidi.com
 * @license    http://www.gnu.org/copyleft/lesser.html GNU Lesser General Public License (LGPL) 
*/

class S_Alerts_Controller extends Controller {
	
	public $table_prefix = '';
	
	public function __construct()
    {
        parent::__construct();
	}	
	
	public function index() 
	{
		$settings = kohana::config('settings');
		$site_name = $settings['site_name'];
		$alerts_email = $settings['alerts_email'];
		$unsubscribe_message = Kohana::lang('alerts.unsubscribe')
								.url::site().'alerts/unsubscribe/';

        $database_settings = kohana::config('database'); //around line 33
        $this->table_prefix = $database_settings['default']['table_prefix']; //around line 34

		$settings = NULL;
		$sms_from = NULL;
		$clickatell = NULL;

		$db = new Database();
		
		/* Find All Alerts with the following parameters
		- incident_active = 1 -- An approved incident
		- incident_alert_status = 1 -- Incident has been tagged for sending
		
		Incident Alert Statuses
		  - 0, Incident has not been tagged for sending. Ensures old incidents are not sent out as alerts
		  - 1, Incident has been tagged for sending by updating it with 'approved' or 'verified'
		  - 2, Incident has been tagged as sent. No need to resend again
		*/
		$incidents = $db->query("SELECT i.id, incident_title, 
								 incident_description, incident_verified, 
								 l.latitude, l.longitude, a.alert_id, a.incident_id
								 FROM ".$this->table_prefix."incident AS i INNER JOIN ".$this->table_prefix."location AS l ON i.location_id = l.id
								 LEFT OUTER JOIN ".$this->table_prefix."alert_sent AS a ON i.id = a.incident_id WHERE
								 i.incident_active=1 AND i.incident_alert_status = 1 ");
		
		foreach ($incidents as $incident)
		{
			
			$latitude = (double) $incident->latitude;
			$longitude = (double) $incident->longitude;
			
			// Get all alertees
			$alertees = ORM::factory('alert')
				->where('alert_confirmed','1')
				->find_all();
			
			foreach ($alertees as $alertee)
			{
				// Has this alert been sent to this alertee?
				if ($alertee->id == $incident->alert_id)
					continue;
				
				$alert_radius = (int) $alertee->alert_radius;
				$alert_type = (int) $alertee->alert_type;
				$latitude2 = (double) $alertee->alert_lat;
				$longitude2 = (double) $alertee->alert_lon;
				
				$distance = (string) new Distance($latitude, $longitude, $latitude2, $longitude2);
				
				// If the calculated distance between the incident and the alert fits...
				if ($distance <= $alert_radius)
				{
					if ($alert_type == 1) // SMS alertee
					{
						if ($settings == null)
						{
							$settings = ORM::factory('settings', 1);
							if ($settings->loaded == true)
							{
								// Get SMS Numbers
								if (!empty($settings->sms_no3))
									$sms_from = $settings->sms_no3;
								elseif (!empty($settings->sms_no2))
									$sms_from = $settings->sms_no2;
								elseif (!empty($settings->sms_no1))
									$sms_from = $settings->sms_no1;
								else
									$sms_from = "000";      // Admin needs to set up an SMS number
							}

							$clickatell = new Clickatell();
							$clickatell->api_id = $settings->clickatell_api;
							$clickatell->user = $settings->clickatell_username;
							$clickatell->password = $settings->clickatell_password;
							$clickatell->use_ssl = false;
							$clickatell->sms();
						}	

						$message = $incident->incident_description;
						
						// If Clickatell Is Set Up
						if ($clickatell->send($alertee->alert_recipient, $sms_from, $message) == "OK")
						{
							$alert = ORM::factory('alert_sent');
							$alert->alert_id = $alertee->id;
							$alert->incident_id = $incident->id;
							$alert->alert_date = date("Y-m-d H:i:s");
							$alert->save();
						}
					}

					elseif ($alert_type == 2) // Email alertee
					{
						$to = $alertee->alert_recipient;
						$from = $alerts_email;
						$subject = "[$site_name] ".$incident->incident_title;
						$message = $incident->incident_description
									."<p>".$unsubscribe_message
									.$alertee->alert_code."</p>";

						if (email::send($to, $from, $subject, $message, TRUE) == 1)
						{
							$alert = ORM::factory('alert_sent');
							$alert->alert_id = $alertee->id;
							$alert->incident_id = $incident->id;
							$alert->alert_date = date("Y-m-d H:i:s");
							$alert->save();
						}
					}
				}
			} // End For Each Loop for alerts
			
			
			// Update Incident - All Alerts Have Been Sent!
			$update_incident = ORM::factory('incident', $incident->id);
			if ($update_incident->loaded)
			{
				$update_incident->incident_alert_status = 2;
				$update_incident->save();
			}
		} // End For Each Loop for incidents

		/* Find All Alerts with the following parameters
		- comment_alert_status = 1 -- Comment has been tagged for sending
		
		Comment Alert Statuses - similar to Incident Alert Statuses, see above.
		*/
		$comments = $db->query(
				"SELECT c.id, c.comment_author, c.comment_description, c.comment_email, " .
				"i.incident_title, c.incident_id FROM comment c INNER JOIN incident i ON c.incident_id = i.id WHERE " .
				"c.comment_alert_status = 1 AND c.comment_active = 1");
		foreach ($comments as $comment)
		{
			// Get all alertees
			$alertees = ORM::factory('alert')
				->where('alert_confirmed','1')->where('alert_incident_id', $comment->incident_id)
				->find_all();
			
			foreach ($alertees as $alertee)
			{
				if ($alertee->alert_recipient == $comment->comment_email) continue;  // Don't send own comments.
				$to = $alertee->alert_recipient;
				$from = $alerts_email;
				$subject = "[$site_name] ".$comment->incident_title;
				$message = "<p>Новый комментарий к яме <b>" . $comment->incident_title . "</b></p><p>" .
					"Автор: <b>" . $comment->comment_author . "</b></p><p>" . $comment->comment_description
					. "</p><p>" . $unsubscribe_message . $alertee->alert_code . "</p>";
	
				email::send($to, $from, $subject, $message, TRUE);
			}

            // Mark the comment as processed.
			$update_comment = ORM::factory('comment', $comment->id);
			if ($update_comment->loaded)
			{
				$update_comment->comment_alert_status = 2;
				$update_comment->save();
			}
		}
		
	}
}

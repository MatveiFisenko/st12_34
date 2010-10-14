<?php defined('SYSPATH') or die('No direct script access.');
/**
 * Gibdd Reminders Scheduler Controller
 *
 * PHP version 5
 *  
*/

class S_Gibdd_Reminders_Controller extends Controller {
	
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
        $database_settings = kohana::config('database'); //around line 33
        $this->table_prefix = $database_settings['default']['table_prefix']; //around line 34

		$settings = NULL;

		$db = new Database();
		
		/* Find All Comments where 
		- gibdd_reminder_sent = 0 - the reminder has not been sent and
		- gibdd_reminder_date >= today - it's the right time to sent a reminder.
		
		*/
		$comments = $db->query("SELECT c.id, c.comment_author, c.comment_email, i.incident_title, c.incident_id 
								 FROM ".$this->table_prefix."comment AS c
								 INNER JOIN ".$this->table_prefix."incident AS i ON c.incident_id = i.id
								 WHERE c.comment_gibdd_reminder_sent = 0 AND
								 c.comment_gibdd_reminder_date <= '" . strftime( "%Y-%m-%d") . "'");
		
		foreach ($comments as $comment)
		{
			$to = $comment->comment_email;
			$from = $alerts_email;
			$subject = "[$site_name] ".$comment->incident_title; 
			$link_url = url::site(). "reports/view/" . $comment->incident_id;
			$message = "Здравствуйте, " . $comment->comment_author . "!<br><br>" .
			           "45 дней назад вами было отправлено заявление в ГИБДД.<br>" .
			           "Если ответ из ГИБДД получен, пожалуйста, зарегистрируйте его на сайте " .
			           "<a href='" . $link_url . "'>" . $link_url . "</a>. " .
			           "Если яма была устранена, пожалуйста, также укажите это на сайте.<br><br>" .
			           "С уважением, команда st1234.ru";
			if (email::send($to, $from, $subject, $message, TRUE) == 1)
			{
				$update_comment = ORM::factory('comment', $comment->id);
				if ($update_comment->loaded)
				{
					$update_comment->comment_gibdd_reminder_sent = 1;
					$update_comment->save();
				}
			}
		}
	}
}

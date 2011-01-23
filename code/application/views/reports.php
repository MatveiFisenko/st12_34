<?php
/**
 *  Reports view page.
 *
 * PHP version 5
 * LICENSE: This source file is subject to LGPL license
 * that is available through the world-wide-web at the following URI:
 * http://www.gnu.org/copyleft/lesser.html
 * @author     Ushahidi Team <team@ushahidi.com>
 * @package    Ushahidi - http://source.ushahididev.com
 * @module     API Controller
 * @copyright  Ushahidi - http://www.ushahidi.com
 * @license    http://www.gnu.org/copyleft/lesser.html GNU Lesser General Public License (LGPL)
 */
?>

				<script type="text/javascript">
					function switchSort(new_key) {
						if ( !$('#sort_key').val().match(new RegExp("^"+new_key)) )
							$('#sort_key').val(new_key+"_desc");
						else if ( $('#sort_key').val().match(/_desc$/) )
							$('#sort_key').val($('#sort_key').val().replace(/_desc$/,"_asc") );
						else if ( $('#sort_key').val().match(/_asc$/) )
							$('#sort_key').val($('#sort_key').val().replace(/_asc$/,"_desc") );
						$('#locationFilterForm').submit();
					}
				</script>
				<div id="content">
					<div class="content-bg">
						<!-- start reports block -->
						<div class="big-block">

							<div id="report_stats">
								<?php print form::open(NULL, array('id' => 'locationFilterForm', 'name' => 'locationFilterForm', 'class' => 'gen_forms')); ?>
								<input type="hidden" id="sort_key" name="sort_key" value="<?php echo $form['sort_key']?>">
								<span>Фильтр по местоположению ямы:</span>
								<?php print form::input('pit_location', $form['pit_location'], ' class="text"'); ?>
								<?php print form::close(); ?>
								<table>
									<tr>
										<th>В среднем в день</th>
										<th>Подтверждённых ям</th>
										<th>Устраненных ям</th>
									</tr>
									<tr>
										<td><?php echo $avg_reports_per_day; ?></td>
										<td><?php echo $total_verified; ?></td>
										<td><?php echo $total_resolved; ?></td>
									</tr>
								</table>
							</div>

							<h1><?php echo "Количество ям: ";?> <?php echo ($category_title) ? " в категории $category_title" : ""?>
								<?php echo $pagination_stats; ?></h1>

							<div style="clear:both;"></div>

							<?php if ( preg_match("/^(.*)_(asc|desc)/",$form['sort_key'],$matches) ) {
									if ( $matches[2] == "desc")
										$dir[$matches[1]] = ">";
									else 	
								  		$dir[$matches[1]] = "<";
								  }
							?>
							<div class="report_rowtitle">
								<div class="report_col2">
									<strong><?php echo strtoupper(Kohana::lang('ui_main.report_title'));?></strong>
								</div>
								<div class="report_col3">
									<a href="#" onclick="switchSort('incident_date'); return(-1)">
										<strong><?php echo strtoupper(Kohana::lang('ui_main.date'));?></strong>
										<?php if ( isset($dir['incident_date']) ) echo $dir['incident_date']; ?>
									</a>
								</div>
								<div class="report_col4">
									<a href="#" onclick="switchSort('location_name'); return(-1)">
										<strong><?php echo strtoupper(Kohana::lang('ui_main.location'));?></strong>
										<?php if ( isset($dir['location_name']) ) echo $dir['location_name']; ?>
									</a>
								</div>
								<div class="report_col5">
									<a href="#" onclick="switchSort('incident_verified'); return(-1)">
										<strong><?php echo strtoupper(Kohana::lang('ui_main.verified'));?>?</strong>
										<?php if ( isset($dir['incident_verified']) ) echo $dir['incident_verified']; ?>
									</a>
								</div>
								<div class="report_col6">
									<a href="#" onclick="switchSort('pit_dimension'); return(-1)">
										<strong><?php echo strtoupper(Kohana::lang('ui_main.pit_dimension'));?></strong>
										<?php if ( isset($dir['pit_dimension']) ) echo $dir['pit_dimension']; ?>
									</a>
								</div>
								<div class="report_col7">
									<a href="#" onclick="switchSort('pit_resolved'); return(-1)">
										<strong><?php echo strtoupper(Kohana::lang('ui_main.pit_resolved'));?></strong>
										<?php if ( isset($dir['pit_resolved']) ) echo $dir['pit_resolved']; ?>
									</a>
								</div>
								<div class="report_col8">
									<a href="#" onclick="switchSort('incident_correspondence'); return(-1)">
										<strong><?php echo strtoupper(Kohana::lang('ui_main.incident_correspondence'));?></strong>
										<?php if ( isset($dir['incident_correspondence']) ) echo $dir['incident_correspondence']; ?>
									</a>
								</div>
							</div>
							<?php
							foreach ($incidents as $incident)
							{
								$incident_id = $incident->id;
								$incident_title = $incident->incident_title;
								$incident_description = $incident->incident_description;

								// Trim to 150 characters without cutting words
								// XXX: Perhaps delcare 150 as constant

								$incident_description = text::limit_chars($incident_description, 150, "...", true);
								$incident_date = date('d.m.Y', strtotime($incident->incident_date));
								$incident_location = $incident->location_name;
								$incident_verified = $incident->incident_verified ? 
												'<span class="report_yes">'.strtoupper(Kohana::lang('ui_main.yes')).'</span>' : 
												'<span class="report_no">'.strtoupper(Kohana::lang('ui_main.no')).'</span>';
								$incident_dimension = $incident->pit_length."x".$incident->pit_width."x".$incident->pit_depth;
								$incident_resolved = $incident->pit_resolved ? 
												'<span class="report_yes">'.strtoupper(Kohana::lang('ui_main.yes')).'</span>' : 
												'<span class="report_no">'.strtoupper(Kohana::lang('ui_main.no')).'</span>';
								$incident_correspondence = $incident->gibdd_state == 'not_sent' ? strtoupper(Kohana::lang('ui_main.gibdd_not_sent')) :
																					 ($incident->gibdd_state == 'sent'     ? strtoupper(Kohana::lang('ui_main.gibdd_sent')) :
																					 ($incident->gibdd_state == 'received' ? strtoupper(Kohana::lang('ui_main.gibdd_received')) :
																					 strtoupper(Kohana::lang('ui_main.unknown')))) ;
								$incident_correspondence .= '<br>';
								$incident_correspondence .= $incident->prokuratura_state == 'not_sent' ? strtoupper(Kohana::lang('ui_main.prokuratura_not_sent')) :
																					  ($incident->prokuratura_state == 'sent'     ? strtoupper(Kohana::lang('ui_main.prokuratura_sent')) :
																					  ($incident->prokuratura_state == 'received' ? strtoupper(Kohana::lang('ui_main.prokuratura_received')) :
																					  strtoupper(Kohana::lang('ui_main.unknown')))) ;
							?>

							<div class="report_row1">

								<div class="report_details report_col2">
									<h3><a href="<?php echo url::site(); ?>reports/view/<?php echo $incident_id; ?>"><?php echo $incident_title; ?></a></h3>
									<?php echo $incident_description; ?>
								</div>

								<div class="report_date report_col3">
									<?php echo $incident_date; ?>
								</div>

								<div class="report_location report_col4">
									<?php echo $incident_location; ?>
								</div>

								<div class="report_status report_col5">
									<?php echo $incident_verified; ?>
								</div>

								<div class="report_status report_col6">
									<?php echo $incident_dimension; ?>
								</div>

								<div class="report_status report_col7">
									<?php echo $incident_resolved; ?>
								</div>
								
								<div class="report_status report_col8">
									<?php echo $incident_correspondence; ?>
								</div>

							</div>
							<?php } ?>

							<?php echo $pagination; ?>

						</div>
						<!-- end reports block -->
					</div>
				</div>
			</div>
		</div>
	</div>

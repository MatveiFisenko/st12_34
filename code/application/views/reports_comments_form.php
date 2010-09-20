<!-- start submit comments block -->
<a name="comments"></a>
<div class="big-block">
	<div id="comments" class="report_comment">
		<h2>Leave a Comment</h2>
		<?php
			if ($form_error) {
		?>
		<!-- red-box -->
		<div class="red-box">
			<h3>Error!</h3>
			<ul>
				<?php
					foreach ($errors as $error_item => $error_description)
					{
						print (!$error_description) ? '' : "<li>" . $error_description . "</li>";
					}
				?>
			</ul>
		</div>
		<?php
		}
		?>
		<?php print form::open(NULL, array('id' => 'commentForm', 
		                                   'name' => 'commentForm', 
		                                   'enctype' => 'multipart/form-data')); ?>
		<div class="report_row">
			<strong>Тип:</strong><br />
			<?php print form::dropdown('comment_type', 
			                           array('comment' => 'Комментарии', 'official' => 'Официалы'), 
			                           $form['comment_type'],
			                           'style="width:10em" onchange="OnTypeChange()"'); ?>
		</div>

		<div class="report_row">
			<strong>Name:</strong><br />
			<?php print form::input('comment_author', $form['comment_author'], ' class="text"'); ?>
		</div>

		<div class="report_row">
			<strong>E-Mail:</strong><br />
			<?php print form::input('comment_email', $form['comment_email'], ' class="text"'); ?>
		</div>
		<div id="reports_comments_type_comment_fields"
		    <?php if($form['comment_type'] == 'official') print 'style="display:none"' ?> >
		  <div class="report_row">
			  <strong>Comments:</strong><br />
			  <?php print form::textarea('comment_description', $form['comment_description'], ' rows="4" cols="40" class="textarea long" ') ?>
		  </div>
		</div>
		<div id="reports_comments_type_official_fields" 
		    <?php if($form['comment_type'] != 'official') print 'style="display:none"' ?> >
		  <div class="report_row">
			  <strong>Направление:</strong><br />
			  <?php print form::dropdown('comment_direction', 
			                             array('outbound' => 'Отправлен запрос', 'inbound' => 'Получен ответ'), 
			                             $form['comment_direction'],
			                             'style="width:15em" onchange="OnDirectionChange()"'); ?>
			</div>
		  <div class="report_row">
			  <strong>Скан (gif, png, jpg):</strong><br />
			  <?php print form::upload('comment_scan[]', '', ' class="file long2"'); ?>
			</div>
		</div>
		<div class="report_row">
			<strong>Security Code:</strong><br />
			<?php print $captcha->render(); ?><br />
			<?php print form::input('captcha', $form['captcha'], ' class="text"'); ?>
		</div>
		<div class="report_row">
			<input name="submit" type="submit" value="Submit Comment" class="btn_blue" />
		</div>
		<?php print form::close(); ?>
	</div>
</div>
<script>
  var OnTypeChange = function() {
    var comments_div = $('#reports_comments_type_comment_fields')[0];
    var official_div = $('#reports_comments_type_official_fields')[0];
    if ($('#comment_type')[0].selectedIndex == 0) {
      comments_div.style.display = 'block';
      official_div.style.display = 'none';
      $('#comment_description')[0].value = '';
      $('input[name=comment_scan\[\]]')[0].value = '';
    } else {
      comments_div.style.display = 'none';
      official_div.style.display = 'block';
      OnDirectionChange();
    }
  };
  
  var OnDirectionChange = function() {
    if ($('#comment_direction')[0].selectedIndex == 0) {
      $('#comment_description')[0].value = 'Официальная переписка - отправлен запрос.';
    } else {
      $('#comment_description')[0].value = 'Официальная переписка - получен ответ.';
    }
  };
  
</script>
<!-- end submit comments block -->

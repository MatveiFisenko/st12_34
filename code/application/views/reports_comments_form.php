<!-- start submit comments block -->
<a name="comments"></a>
<div class="big-block">
	<div id="comments" class="report_comment">
		<h2>Оставить комментарий</h2>
		<?php
			if ($form_error) {
		?>
		<!-- red-box -->
		<div class="red-box">
			<h3>Ошибка!</h3>
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
			<strong>Имя:</strong><br />
			<?php print form::input('comment_author', $form['comment_author'], ' class="text"'); ?>
		</div>

		<div class="report_row">
			<strong>E-Mail:</strong><br />
			<?php print form::input('comment_email', $form['comment_email'], ' class="text"'); ?>
		</div>
		<div id="reports_comments_type_comment_fields"
		    <?php if($form['comment_type'] == 'official') print 'style="display:none"' ?> >
		  <div class="report_row">
			  <strong>Комментарий:</strong><br />
			  <?php print form::textarea('comment_description', $form['comment_description'], ' rows="4" cols="40" class="textarea long" ') ?>
		  </div>
		</div>
		<div id="reports_comments_type_official_fields"
		    <?php if($form['comment_type'] != 'official') print 'style="display:none"' ?> >
		  <div class="report_row">
			  <strong>Направление:</strong><br />
			  <?php 
                $types = array('to_gibdd' => 'Заявление в ГИБДД');
                if($gibdd_sent == 1)
                {
					$types['from_gibdd'] = 'Ответ из ГИБДД';
					$types['to_prokuratura'] = 'Заявление в прокуратуру';
                } 
				if($prokuratura_sent == 1)
				{
					$types['from_prokuratura'] = 'Ответ из прокуратуры';
				}
		  		print form::dropdown('comment_official_type',
									$types,	
									$form['comment_official_type'],
									'style="width:15em" onchange="OnDirectionChange()"'); 
			   ?>
			</div>
		  <div class="report_row">
			  <strong>Скан (gif, png, jpg):</strong><br />
			  <?php print form::upload('comment_scan[]', '', ' class="file long2"'); ?>
			</div>
		</div>
		<div class="report_row">
			<strong>Введите текст с картинки:</strong><br />
			<?php print $captcha->render(); ?><br />
			<?php print form::input('captcha', '', ' autocomplete=off class="text"'); ?>
		</div>
		<div class="report_row">
			<input name="submit" type="submit" value="Оставить комментарий" class="btn_blue" />
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
  	var d = '';
    switch($('#comment_official_type')[0].value) {
    	case 'from_gibdd':
    	  d = 'Ответ из ГИБДД';
    	  break;
    	case 'to_gibdd':
    	  d = 'Заявление в ГИБДД';
    	  break;
    	case 'from_prokuratura':
    	  d = 'Ответ из прокуратуры';
    	  break;
    	case 'to_prokuratura':
    	  d = 'Заявление в прокуратуру';
    	  break;
    }
    $('#comment_description')[0].value = d;
  };

</script>
<!-- end submit comments block -->

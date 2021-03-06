<div class="orig-report">
	<div class="discussion">
		<h5>Дополнительные сообщения и обсуждение&nbsp;&nbsp;&nbsp;(<a href="#comments">Добавить</a>)</h5>
		<?php
		foreach($incident_comments as $comment)
		{
		  $class = "";
      if ($comment->comment_type == "official") {
        $class = " discussion-box-official";
      }
			echo "<div class=\"discussion-box" . $class . "\">";
			echo "<p><strong>" . $comment->comment_author . "</strong>&nbsp;(" . date('M j Y', strtotime($comment->comment_date)) . ")</p>";
			echo "<p>" . $comment->comment_description . "</p>";
        	$comment_scan = $comment->comment_scan;
			if ($comment_scan != '')
			{
		      	$prefix = url::base()."media/uploads";
		      	$imgurl_base = $prefix . "/" . $comment_scan;
		  		echo("<a href='" . $imgurl_base . ".jpg'><img src='" . $imgurl_base . "_t.jpg' height=100 width=70 alt='Скан'></a>");
				echo("<br><a href='" . $imgurl_base . ".jpg'>Скан</a>");
     		}
			echo "<div class=\"report_rating\">";
			echo "	<div>";
			echo "	Достоверность:&nbsp;";
			echo "	<a href=\"javascript:rating('" . $comment->id . "','add','comment','cloader_" . $comment->id . "')\"><img id=\"cup_" . $comment->id . "\" src=\"" . url::base() . 'media/img/' . "up.png\" alt=\"UP\" title=\"UP\" border=\"0\" /></a>&nbsp;";
			echo "	<a href=\"javascript:rating('" . $comment->id . "','subtract','comment','cloader_" . $comment->id . "')\"><img id=\"cdown_" . $comment->id . "\" src=\"" . url::base() . 'media/img/' . "down.png\" alt=\"DOWN\" title=\"DOWN\" border=\"0\" /></a>&nbsp;";
			echo "	</div>";
			echo "	<div class=\"rating_value\" id=\"crating_" . $comment->id . "\">" . $comment->comment_rating . "</div>";
			echo "	<div id=\"cloader_" . $comment->id . "\" class=\"rating_loading\" ></div>";
			echo "</div>";
			echo "</div>";
		}
		?>
	</div>
</div>

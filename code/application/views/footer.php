<?php
/**
 * Footer view page.
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


	<!-- footer -->
	<div id="footer" class="clearingfix">

		<div id="underfooter"></div>

		<!-- footer content -->
		<div class="rapidxwpr floatholder">

			<!-- footer credits -->
			<div class="footer-credits">
				Работает на <a href="http://www.ushahidi.com/"><img src="<?php echo url::base(); ?>/media/img/footer-logo.png" alt="Ushahidi" align="absmiddle" /></a>
			</div>
			<!-- / footer credits -->

			<!-- footer menu -->
			<div class="footermenu">
				<ul class="clearingfix">
					<li><a class="item1" href="<?php echo url::site() ?>"><?php echo Kohana::lang('ui_main.home'); ?></a></li>
					<li><a href="<?php echo url::site() . "reports/submit" ?>"><?php echo Kohana::lang('ui_main.report_an_incident'); ?></a></li>
					<li><a href="<?php echo url::site() . "alerts" ?>"><?php echo Kohana::lang('ui_main.alerts'); ?></a></li>		
					<li><a href="<?php echo url::site() . "page/index/2" ?>">Что делать?</a></li>			
					<li><a href="<?php echo url::site() . "page/index/1" ?>"><?php echo Kohana::lang('ui_main.about'); ?></a></li>
					

				</ul>
				<p>&copy; 2010 st1234.ru</p>
			</div>
			<!-- / footer menu -->


		</div>
		<!-- / footer content -->

	</div>
	<!-- / footer -->

	<?php echo $google_analytics; ?>

	<!-- Task Scheduler -->
	<!--  <img src="<?php echo url::site() . 'scheduler'; ?>" height="1" width="1" border="0" /> -->

<!-- Google Analytics-->
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-9404395-4']);
  _gaq.push(['_setDomainName', '.st1234.ru']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

        <!-- script for share button -->
        <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pub=ushahidi"></script>

<!-- Reformal -->
<script type="text/javascript"><!--
reformal_wdg_domain    = "st1234";
reformal_wdg_mode    = 0;
reformal_wdg_title   = "Борьба с ямами ";
reformal_wdg_ltitle  = "Оставьте свой отзыв";
reformal_wdg_lfont   = "";
reformal_wdg_lsize   = "";
reformal_wdg_color   = "#FFA000";
reformal_wdg_bcolor  = "#516683";
reformal_wdg_tcolor  = "#FFFFFF";
reformal_wdg_align   = "right";
reformal_wdg_charset = "windows-1251";
reformal_wdg_waction = 0;
reformal_wdg_vcolor  = "#9FCE54";
reformal_wdg_cmline  = "#E0E0E0";
reformal_wdg_glcolor  = "#105895";
reformal_wdg_tbcolor  = "#FFFFFF";
 
reformal_wdg_bimage = "7688f5685f7701e97daa5497d3d9c745.png";
 //-->
</script>

<script type="text/javascript" language="JavaScript" src="http://widget.reformal.ru/tab6.js"></script><noscript><a href="http://st1234.reformal.ru">Борьба с ямами  feedback </a> <a href="http://reformal.ru"><img src="http://reformal.ru/i/logo.gif" /></a></noscript>

</body>
</html>

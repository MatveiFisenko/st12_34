<?php

/**
 * SETTINGS INTERFACE INTERNATIONALIZATION
 *
 * ru_RU
 */

$lang = array
(
    'default_location' => 'Координаты по умолчанию',
    'select_default_location' => 'Выберите страну',
    'download_city_list' => 'Получить названия из ГЕОназваний',
    'multiple_countries' => 'Содержит ли Ushahidi несколько стран одновременно', 
    'map_settings' => 'Настройка карты',
    'configure_map' => 'Настроить карту',
    'default_map_view' => 'Вид карты по умолчанию',
    'default_zoom_level' => 'Масштаб по умолчанию',
    'set_location' => 'Кликните на карту, чтобы указать на точные координаты',
    'map_provider' => array
	(
		'name'		=> 'Провайдер карты',
		'info'		=> 'Выбор провайдера карты очень прост: выберите провайдера, получите API ключ и введите ключ на сайте',
        'choose'    => 'Выберите провайдера карты',
        'get_api'   => 'Получить API ключ',
        'enter_api' => 'Выберите новый API ключ'
	),
    'site' => array
	(
		'display_contact_page' => 'Показать страницу контактов',
        'display_howtohelp_page' => 'Показать страницу "Как помочь" ',
        'email_alerts' => 'Адрес электронной почты для оповещения',
        'email_notice' => '<span>In order to receive reports by email, please <a href="'.url::base().'admin/settings/email">configure your email account settings</a>.</span>',
        'email_site' => 'Электронная почта сайта',
        'title'		=> 'Параметры сайта',
		'name'		=> 'Названия сайта',
        'tagline'    => 'Заголовок сайта',
        'items_per_page'   => 'Количество элементов на странице - Главная',
        'items_per_page_admin' => 'Количество элементов на странице - Admin',
        'allow_reports' => 'Разрешить пользователям присылать отчёты о событиях',
        'allow_comments' => 'Разрешить пользователям комментировать отчёты',
        'allow_feed' => 'Включить новостную ленту RSS в Веб сайте',
        'allow_clustering' => 'Кластерировать Отчёты по Карте',
        'default_category_colors' => 'Цвет по умолчанию для категорий',
        'google_analytics' => 'Google Analytics',
        'google_analytics_example' => 'ID Вашего аккаунта в формате UA-XXXXX-XX',
        'twitter_configuration' => 'Twitter аккаунт',
        'twitter_hashtags' => 'Хэштеги - Отделите запятыми ',
        'laconica_configuration' => 'Laconica аккаунт',
        'laconica_site' => 'Laconica Сайт ',
        'language' => 'Язык Сайта',
        'api_akismet' => 'ключ Akismet',
        'kismet_notice' => 'Защититесь от СПАМА используя <a href="http://akismet.com/" target="_blank">Akismet</a> от Automattic. <BR /> Вы можете получить бесплатный API ключ по адресу <a href="http://en.wordpress.com/api-keys/" target="_blank">http://en.wordpress.com/api-keys/</a>',
        'share_site_stats' => 'Отправлять статистику в API'
	),
	'cleanurl' => array 
	(
		'title' => 'Чистые URL',
		'enable_clean_url' => 'Использовать короткие URL',
		'clean_url_enabled' => 'Включение этого параметра убирает "index.php" из адресной строки броузера при доступе к любой странице Ushahidi.',
		'clean_url_disabled' => 'Ваш сервер не настроен для использования коротких URL. Настойте ваш сервер до того, как включить данную услугу. Для более подробной информации ознакомьтесь с <a href="http://forums.ushahidi.com/topic/server-configuration-for-apache-mod-rewrite" target="_blank">обсуждением</a>',
	),
    'sms' => array
	(
        'title' => 'Настройка SMS',
        'option_1'		=> 'Опция1: Use Frontline SMS', 
		'option_2'		=> 'Option 2: Использовать Global SMS Gateway',
        'flsms_description' => 'FrontlineSMS - бесплатная программа которая позволяет превратить ноутбук или мобильный телефон в центр управления. Программа позволяет пользователям отправлять и получать СМС для большой группы людей через мобильные телефоны. Нажмите на кнопу для установки от FrontlineSMS.com',
        'flsms_download'    => 'Скачайте Frontline SMS и установите на свой компьютер',
        'flsms_synchronize'   => 'Синхронизировать с Ushahidi',
        'flsms_instructions' => 'Сообщения, полученные FrontlineSMS, могут быть синхронизированы с Ushahidi. Информацию о том как синхронизировать с Ushahidi можно найти <strong><a href="http://wiki.ushahididev.com/doku.php?id=how_to_use_ushahidi_alpha#how_to_setup_frontlinesms_to_sync_with_ushahidi" target="_blank">здесь</a></strong>. Вы должны получить ключ по ссылке, чтобы синхронизировать с FrontlineSMS.',
        'flsms_key' => 'Ключ синхронизации Ushahidi',
        'flsms_link' => 'FrontlineSMS HTTP Post LINK', 
        'flsms_text_1' => 'Введите номер телефона подключенный к Frontline SMS в поле ниже',
        'flsms_text_2' => 'Введите номер без символов + или -',
        'clickatell_text_1' => 'Подключитесь к услуге Clickatell в <a href="https://www.clickatell.com/central/user/client/step1.php?prod_id=2" target="_blank">clicking here</a>',
        'clickatell_text_2' => 'Введите Вашу информацию Clickatell ниже',
        'clickatell_api' => 'Введите Clickatell API Number',
        'clickatell_username' => 'Введите имя пользователя Clickatell ', 
        'clickatell_password' => 'Введите пароль Clickatell ', 
        'clickatell_check_balance' => 'Проверьте баланс на Clickatell ', 
        'clickatell_load_balance' => 'Загрузите баланс на Clickatell'
	),      
    
    'map' => array
	(
		'zoom'		=> 'Масштаб',
		'default_location'	=> 'Выбор провайдера карты очень прост: выберите провайдера, получите API ключ и введите ключ на сайте'
	),   
    
	'site_name' => array
	(
		'required'		=> 'Введите название сайта. ',
		'length'		=> 'Название сайта должно содержать не менее 3 и не более 50 символов.',
	),
	
	'site_tagline' => array
	(
		'required'		=> 'Введите подзаголовок.',
		'length'		=> 'Подзаголовок должен содержать не менее 3 и не более 100 символов.',
	),
	
	'site_email' => array
	(
		'email'		  => 'Электронная почта сайта введена неправильно.',
		'length'	  => 'Адрес электронной почты должен содержать не менее 4 и не более 100 символов.'
	),
	
	'items_per_page' => array
	(
		'required'		=> 'Количество отчётов на страницу для (Главный).',
		'between' => 'Поле количества на страницу  (Главный) заполнен в неправильном формате'
	),
	
	'items_per_page_admin' => array
	(
		'required'		=> 'Количество отчётов на страницу для (Admin).',
		'between' => 'Поле количества на страницу  (Admin) заполнен в неправильном формате'
	),
	
	'allow_reports' => array
	(
		'required'		=> 'Введите поле о допустимости отправлять отчёты.',
		'between' => 'Поле о допустимости отправлять отчёты заполнено неверно'
	),
	
	'allow_comments' => array
	(
		'required'		=> 'Введите поле о допустимости отправлять комменты.',
		'between' => 'Поле о допустимости отправлять комменты заполнено неверно'
	),
	
	'allow_stat_sharing' => array
	(
		'required'		=> 'Введите поле об отправке статистики.',
		'between' => 'Поле об отправке статистики заполнено неверно'
	),
	
	'allow_feed' => array
	(
		'required'		=> 'Введите поле о ленте RSS.',
		'between' => 'Поле о ленте RSS заполнен неверно'
	),
	
	'default_map_all' => array
	(
		'required'		=> 'Введите цвет.',
		'alpha_numeric'		=> 'Поле цвета содержит неверные данные',
		'length'		=> 'Поле Цвет должно быть 6тизначным.',
	),
	
	'api_akismet' => array
	(
		'alpha_numeric'		=> 'Поле Akismet введен неверно',
		'length'		=> 'Поле Akismet введен неверно'
	),		
	
	'sms_no1' => array
	(
		'numeric'		=> 'Телефон 1 должен содержать только цифры.',
		'length' => 'Телефон 1 содержит неверные значения'
	),
	
	'sms_no2' => array
	(
		'numeric'		=> 'Телефон 2 должен содержать только цифры.',
		'length' => 'Телефон 2 содержит неверные значения'
	),
	
	'sms_no3' => array
	(
		'numeric'		=> 'Телефон 3 должен содержать только цифры.',
		'length' => 'Телефон 3 содержит неверные значения'
	),
	
	'clickatell_api' => array
	(
		'required'		=> 'Введите Clickatell API номер.',
		'length'		=> 'Длинна номера Clickatell API не должна превышать 20 символов.',
	),
	
	'clickatell_username' => array
	(
		'required'		=> 'Введите имя пользователя Clickatell.',
		'length'		=> 'Длинна имени пользователя Clickatell не должна превышать 50 символов.',
	),
	
	'clickatell_password' => array
	(
		'required'		=> 'Введите пароль Clickatell.',
		'length'		=> 'Длинна пароли Clickatell не должна превышать 50 символов.',
	),

	'google_analytics' => array
	(
		'length'		=> 'Поле Google Analytics должна содержать действующий Web Property ID в формате UA-XXXXX-XX.',
	),
	
	'email_username' => array
	(
		'required'		=> 'Введите имя пользователя сервера почты.',
		'length'		=> 'Длина имени пользователя сервера почты не должна превышать 50 символов.',
	),
	
	'email_password' => array
	(
		'required'		=> 'Введите пароль сервера почты.',
		'length'		=> 'Длина пароли сервера почты не должна превышать 50 символов.',
	),
	
	'email_port' => array
	(
		'numeric'		=> 'Хост сервера почты должна содержать только цифры.',
		'length' 		=> 'Поле порта Сервера почты слишком длинный'
	),
	
	'email_host' => array
	(
		'numeric'		=> 'Хост сервера почты должна содержать только цифры.',
		'length' 		=> 'Поле порта Сервера почты слишком длинный'
	),
	
	'email_servertype' => array
	(
		'required'		=> 'Введите тип Сервера почты.',
		'length' 		=> 'Поле порта Сервера почты слишком длинный'
	)		
	
);
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
		'required'		=> 'Введите количество элементов на заглавной странице.',
		'between' => 'Количество элементов на заглавной странице указано неверно.'
	),
	
	'items_per_page_admin' => array
	(
		'required'		=> 'Введите количество элементов на странице администрирования.',
		'between' => 'Количество элементов на странице администрирования указано неверно.'
	),
	
	'allow_reports' => array
	(
		'required'		=> 'Укажите, могут ли пользователи сообщать о событиях.',
		'between' => 'Ограничение доступа к сообщениям о событиях указано неверно.'
	),
	
	'allow_comments' => array
	(
		'required'		=> 'Укажите, могут ли пользователи комментировать сообщения о событиях.',
		'between' => 'Ограничение доступа к комментариям указано неверно.'
	),
	
	'allow_stat_sharing' => array
	(
		'required'		=> 'Укажите, является ли статистика сайта доступной.',
		'between' => 'Ограничение доступа к статистике сайта указано неверно.'
	),
	
	'allow_feed' => array
	(
		'required'		=> 'Укажите, показывать ли ленту RSS на сайте.',
		'between' => 'Ограничение видимости ленты RSS указано неверно.'
	),
	
	'default_map_all' => array
	(
		'required'		=> 'Введите цвет.',
		'alpha_numeric'		=> 'Цвет указан неверно.',
		'length'		=> 'Цвет должен содержать не более 6 символов.',
	),
	
	'api_akismet' => array
	(
		'alpha_numeric'		=> 'Ключ Akismet введен неверно',
		'length'		=> 'Ключ Akismet введен неверно'
	),		
	
	'sms_no1' => array
	(
		'numeric'		=> 'Телефон 1 должен содержать только цифры.',
		'length' => 'Телефон 1 введен неверно.'
	),
	
	'sms_no2' => array
	(
		'numeric'		=> 'Телефон 2 должен содержать только цифры.',
		'length' => 'Телефон 2 введен неверно.'
	),
	
	'sms_no3' => array
	(
		'numeric'		=> 'Телефон 3 должен содержать только цифры.',
		'length' => 'Телефон 3 введен неверно.'
	),
	
	'clickatell_api' => array
	(
		'required'		=> 'Введите идентификатор Clickatell API.',
		'length'		=> 'Идентификатор Clickatell API должен содержать не более 20 символов.',
	),
	
	'clickatell_username' => array
	(
		'required'		=> 'Введите имя пользователя Clickatell.',
		'length'		=> 'Имя пользователя Clickatell должно содержать не более 50 символов.',
	),
	
	'clickatell_password' => array
	(
		'required'		=> 'Введите пароль Clickatell.',
		'length'		=> 'Пароль Clickatell должен содержать не менее 5 и не более 50 символов.',
	),

	'google_analytics' => array
	(
		'length'		=> 'Поле Google Analytics должно содержать действующий Web Property ID в формате UA-XXXXX-XX.',
	),
	
	'email_username' => array
	(
		'required'		=> 'Введите имя пользователя сервера электронной почты.',
		'length'		=> 'Имя пользователя сервера электронной почты должно содержать не более 50 символов.',
	),
	
	'email_password' => array
	(
		'required'		=> 'Введите пароль сервера электронной почты.',
		'length'		=> 'Пароль сервера электронной почты должен содержать не менее 5 и не более 50 символов.',
	),
	
	'email_port' => array
	(
		'numeric'		=> 'Адрес сервера электронной почты должен содержать только цифры. ???',
		'length' 		=> 'Указанный тип Сервера почты слишком длинный'
	),
	
	'email_host' => array
	(
		'numeric'		=> 'Адрес сервера электронной почты должен содержать только цифры. ???',
		'length' 		=> 'Указанный тип Сервера почты слишком длинный'
	),
	
	'email_servertype' => array
	(
		'required'		=> 'Введите тип сервера электронной почты.',
		'length' 		=> 'Указанный тип Сервера почты слишком длинный'
	)		
	
);
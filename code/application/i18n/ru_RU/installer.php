<?php

/**
 * INSTALLER INTERFACE INTERNATIONALIZATION
 *
 * ru_RU
 */

$lang = array
(
    'db_information_link' => 'За дополнительной информацией обращайтесь <a href="http://wiki.ushahidi.com/doku.php?id=a_brief_word_on_databases" target="_blank">this article</a> on the wiki that talks about databases in more detail',
    'index' => array
    (   'advanced' => 'РАСШИРЕННАЯ УСТАНОВКА',
        'advanced_installation_description' => 'Завершите все основные установки за 5 шагов, включающих сервер, карту, название сайта и контактные данные.',
        'basic_installation' => 'БАЗОВАЯ УСТАНОВКА',
        'basic_installation_description' => 'Simple and fast. All you need is your website\'s root directory and your database information. Choose this option if you want to get up and running quickly, and you can always configure everything else later',
        'proceed' => 'Продолжить',
        'welcome' => 'Добро пожаловать в процесс установки сервера Ushahidi. Выберите ниже какой тип установки вы предпочитаете использовать'
    ),
    'summary' => array
    (
        'text_1' => 'Файлы и папки из списка ниже должны быть доступны для записи с вашего сервера',
        'text_2' => '<p>Вот инструкции по изменению доступа к файлам:</p>        <ul>
            <li><a href="http://www.washington.edu/computing/unix/permissions.html" target="_blank">Unix/Linux</a></li>
            <li><a href="http://support.microsoft.com/kb/308419" target="_blank">Windows</a></li>
        </ul>',
        'text_3' => 'Перед тем как начать, вы должны убедиться, что следующие файлы и папки доступны для записи с вашего сервера',
        'text_4' => 'Для установки вам потребуются следующие данные'
    ),
    'base_path' => 'Путь к базе данных',
    'database' => 'База данных',
    'database_host' => 'Сервер базы данных',
    'database_host_description' => 'Если вы запускаете Ushahidi на собственном компьютере, то наиболее предпочтительно использовать localhost. Если Вы запускаете Ushahidi на удаленном вебсервере, то информацию об имени хоста Вы должны получить у Вашего хостинг провайдера.',
    'database_name' => 'Имя базы данных',
    'database_name_description' => 'Имя базы данных, в которой Вы хотите запустить Ushahidi',
    'default_language' => 'Язык по умолчанию (Региональные настройки)',
    'default_language_description' => 'Каждая сборка Ushahidi поставляется с поддержкой нескольких языков. Вы также можете <a href="http://wiki.ushahidi.com/doku.php?id=localisation_l10n_internationlisation_i18n&s[]=language#enabling_new_languages" target="_blank">добавить свой</a>.',
    'disable' => 'Выключить',
    'enable' => 'Включить',
    'error_summary' => 'Ниже перечислены все найденные ошибки',
    'files_location_text' => 'Путь на сервере, где находятся файлы Ушахиди. <strong>Данное значение было определено автоматически, поэтому проверьте, является ли оно верным.</strong> Если поле пустое, то Ушахиди установлен в корне сайта.',
    'finished' => 'Закончено',
    'general' => 'Общее',
    'go_back' => 'Назад',
    'google_key' => '<span>Google</span> API Key',
    'google_key_description' => 'Любой может получить api key. <a id="api-link" href="http://code.google.com/apis/maps/signup.html" target="_blank">Получите свой</a>',
    'installation_successful' => 'Установка завершена успешно',
    'mail_server' => 'Почтовый сервер',
    'mail_server_host' => 'Хост сервера почты',
    'mail_server_host_description' => 'Примеры: mail.yourwebsite.com imap.gmail.com pop.gmail.com',
    'mail_server_password' => 'Пароль Mail Сервера',
    'mail_server_password_description' => 'Пароль для доступа к электронной почте',
    'mail_server_port' => 'Порт Mail Сервера',
    'mail_server_port_description' => 'Обычные порты: 25 110 995 (Gmail POP3 SSL) 993 (Gmail IMAP SSL)',
    'mail_server_type' => 'Тип Mail сервера',
    'mail_server_type_description' => 'Internet Message Access Protocol (IMAP) or Post Office Protocol (POP). <a href="http://saturn.med.nyu.edu/it/help/email/imap/index.html" target="_blank">Какая разница?</a>',
    'mail_server_username' => 'Имя пользователя Mail Сервера',
    'mail_server_username_description' => 'Если вы используете Gmail Hotmail или Yahoo Mail введите полный адрес электронной почты как название',
    'map' => 'Карта',
    'map_provider' => 'Поставщик карты',
    'map_provider_description' => 'Ушахиди одинаково хорошо работает с любой из этих четырех картографических систем: Google, Bing, Yahoo и Open Street Map.  Выберите ту их них, которая лучше детализирует вашу область',
    'other_steps' => 'Другие шаги...',
    'password' => 'Пароль',
    'password_description' => 'Пароль базы данных',
    'previous' => 'Последнее',
    'restart_apache' => 'Пожалуйста, перезагрузите ваш Apache Server.',
    'select_mail_server_ssl' => 'Включить или выключить SSL',
    'select_mail_server_ssl_description' => 'Некоторые почтовые серверы дают возможность использования <abbr title="Secure Sockets Layer">SSL</abbr> при соединении. Использование SSL рекомендуется поскольку даёт дополнительную защиту',
    'setup_sms' => 'Установите Ваш SMS сервер',
    'site_email' => 'Электронный адрес сайта',
    'site_email_alerts' => 'Почтовый адрес уведомлений сайта',
    'site_email_alerts_description' => 'Когда посетители Вашего сайта подписываются на почтовые уведомления, они будут получать уведомления с этого адреса. Он может не совпадать с почтовым адресом сайта.',
    'site_email_description' => 'Связь с сайтом по электронной почте будет осуществляться через этот адрес',
    'site_name' => 'Названия сайта',
    'site_name_description' => 'Название Вашего сайта',
    'site_tagline' => 'Заголовок сайта',
    'site_tagline_description' => 'Ваш подзаголовок',
    'summary_text_1' => '',
    'summary_text_2' => '',
    'summary_text_3' => '',
    'table_prefix' => 'Префикс таблицы',
    'table_prefix_description' => 'Обычно не требуется менять префикс таблицы. Однако если вы хотите запустить несколько установок Ushahidi из одной базы данных, вы можете делать это, поменяв префикс здесь.',
    'title' => 'Заголовок',
    'to_login' => 'Чтобы авторизоваться, перейдите',
    'upload_data' => 'Загрузить отчет',
    'use_credentials' => 'и использовать следующие данные',
    'username' => 'Имя пользователя',
    'username_description' => 'Имя пользователя базы данных',
    'view_site' => 'Посмотреть сайт'
);
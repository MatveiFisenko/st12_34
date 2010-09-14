<?php

$lang = array
(
	'alert_mobile' => array
	(
		'required'		=> 'Нужно ввести номер телефона, или уберите галочку.',
		'numeric'		=> 'Номер телефона введен не правильно, введите только цифры с кодом страны.',
		'one_required'	=> 'Введите телефонный номер или адрес Email.',
		'mobile_check'	=> 'Этот номер уже зарегистрирован для этой зоны, введите другой номер',
		'length'		=> 'В вашем номере не хватает цифр, введите правильный номер.'
	),

	'alert_email' => array
	(
		'required'		=> 'Нужно ввести адрес Email, или уберите галочку.',
		'email'		  => 'Ваш Email адрес введен не правильно, введите правильно.',
		'length'	  => 'Длинна Email адреса не может быть меньше 4 и не больше 64 символов.',
		'email_check'	=> 'Этот Email уже зарегистрирован для этой зоны, введите другой Email',
		'one required' => ''
	),

	'alert_lat' => array
	(
		'required'		=> 'Вы не выбрали местоположение на карте.',
		'between' => 'Вы неправильно выбрали местоположение на карте.'
	),

	'alert_lon' => array
	(
		'required'		=> 'Вы неправильно выбрали местоположение на карте.',
		'between' => 'Вы неправильно выбрали местоположение на карте.'
	),

	'alert_radius' => array
	(
		'required'		=> 'Вы не установили радиус событий на карте.',
		'in_array' => 'Вы не установили радиус событий на карте.'
	),

    'code_not_found' => 'Код проверки не был найден. Введите правильный URL.',
    'code_already_verified' => 'Этот код уже использован!',
    'code_verified' => ' Ваш код подтвержден. Теперь вы будете получать уведомления о событиях.',
    'mobile_alert_request_created' => 'Мобильная система уведомления создана, через некоторое время вы получите СМС с кодом подтверждения',
	'verify_code' => 'Вы не сможете получать уведомления, пока не введете код подтверждения.',
	'mobile_code' => 'Введите код подтверждения который был отправлен по СМС: ',
	'mobile_ok_head' =>'Ваша заявка Мобильной системы уведомления сохранена!',
	'mobile_error_head' => 'Ваша заявка Мобильной системы уведомления НЕ сохранена!',
	'error' => 'Не удалось обработать вашу заявку!',
	'settings_error' => 'Не правильно настроена система Уведомления',
	'email_code' => 'Введите код подтверждения который был отправлен по Email: ',
	'email_alert_request_created' => ' Вы включили систему уведомления по Email, через некоторое время вы получите email с кодом подтверждения',
	'email_ok_head' =>'Настройка Системы уведомлений по Email была сохранена!',
	'email_error_head' => 'Настройка Системы уведомлений по Email НЕ была сохранена!',
    'create_more_alerts' => 'Вернитесь на страницу Уведомлений для создания новых.',
	'unsubscribe' => ' Вы получили этот Email потому что подписались получать Уведомления. Если вы не хотите получать уведомления зайдите: ',
	'verification_email_subject' => 'Проверка Уведомлений',
	'confirm_request' => 'Чтобы подтвердить заявку получать уведомления, зайдите:',
	'unsubscribed' => 'Вы больше не будете получать уведомления от:',
	'unsubscribe_failed' => 'Мы не смогли отписать Вас от получения уведомлений, проверьте адрес URL.'
);

<?php

/**
 * SHARING INTERFACE INTERNATIONALIZATION
 *
 * ru_RU
 */

$lang = array
(
    'contact' => 'Контакт	',	
    'date' => 'Дата регистрации',
    'date_added' => 'Дата добавления',
    'last_access' => 'Последнее посещение',
    'sent_info' => 'Данная информация будет отправлена с заявкой',
    'sharing_key' => 'Ключ',
    'sharing_url' => array
	(
		'required'	=> 'Введите URL сайта.',
		'url'		=> 'URL сайта введен неверно',
		'valid'	=> 'На указанном сайте отсутствует Ushahidi или не был включен Sharing.',
		'exists'	=> 'URL сайта уже существует',
		'edit'	=> 'You can\'t edit the URL of remote site. This share can be deleted and a new share request made.'
	),
	
	'sharing_email' => array
	(
		'email'		  => 'Адрес электронной почты введен неверно.',
		'required'	=> 'Введите адрес электронной почты вашего сайта. Зайдите в Параметры для добавления нового электронного адреса.',
	),	
	
	'sharing_color' => array
	(
		'required'		=> 'Введите цвет.',
		'length'		=> 'Цвет должен содержать не более 6 символов.',
	),
	
	'sharing_limits' => array
	(
		'required'		=> 'Введите уровень доступа.',
		'between'		=> 'Уровень доступа введен неверно.',
	),

	'sharing_type' => array
	(
		'between'		=> 'Тип Sharing введен неверно',
	)	
);
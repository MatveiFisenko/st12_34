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
		'required'	=> 'Введите url сайта.',
		'url'		=> 'Адрес сайта введен неверно',
		'valid'	=> 'Данный сайт не подходит по требованиям Ushahidi или не был включен Sharing.',
		'exists'	=> 'URL сайта уже существует',
		'edit'	=> 'Вы можете редактировать удаленно. Sharing может быть прерван или вы можете создать новый.'
	),
	
	'sharing_email' => array
	(
		'email'		  => 'Поле электронного адреса заполнено неверно.',
		'required'	=> 'Введите электронный адрес вашего сайта. Зайдите в Параметры для добавления нового электронного адреса.',
	),	
	
	'sharing_color' => array
	(
		'required'		=> 'Введите цвет.',
		'length'		=> 'Длина цвета должна содержать 6 знаков.',
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
<?php

$lang = array
(
	'contact_name' => array
	(
		'required'		=> 'Введите имя.',
		'length'        => 'Имя должно содержать не менее 3 символов.'
	),

	'contact_subject' => array
	(
		'required'		=> 'Введите тему.',
		'length'        => 'Тема должна содержать не менее 3 символов.'
	),
	
	'contact_message' => array
	(
		'required'        => 'Введите сообщение.'
	),
	
	'contact_email' => array
	(
		'required'    => 'Нужно ввести адрес электронной почты или убрать галочку.',
		'email'		  => 'Адрес электронной почты введен неправильно.',
		'length'	  => 'Адрес электронной почты должен содержать не менее 4 и не более 64 символов.'
	),
	
	'captcha' => array
	(
		'required' => 'Введите защитный код ', 
		'default' => 'Введите правильный защитный код'
	)
	
);

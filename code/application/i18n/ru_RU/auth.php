<?php

$lang = array
(
	'name' => array
	(
		'required'		=> 'Введите имя.',
		'length'		=> 'Имя не может содержать менее 3 и более 100 символов.',
		'standard_text' => 'Имя пользователя введено неправильно.',
		'login error'	=> 'Введите правильное имя пользователя.'
	),
	
	'email' => array
	(
		'required'	  => 'Введите адрес электронной почты.',
		'email'		  => 'Адрес электронной почты введен неверно.',
		'length'	  => 'Адрес электронной почты должен содержать не менее 4 и не более 64 символов.',
		'exists'	  => 'Данный адрес электронной почты уже используется другим пользователем.',
		'login error' => 'Введите правильный адрес электронной почты.'
	),

	'username' => array
	(
		'required'		=> 'Введите имя пользователя.',
		'length'		=> 'Длина имени пользователя не может быть менее 2х и более 16ти символов.',
		'alpha' => 'Имя пользователя должно содержать только буквы.',
		'admin' 		=> 'Роль Admin не может быть изменена.',
		'superadmin'	=> 'Роль Super Admin не может быть изменена.',
		'exists'		=> 'Извините, выбранное имя пользователя уже используется.',
		'login error'	=> 'Введите правильное имя пользователя.'
	),

	'password' => array
	(
		'required'		=> 'Введите  пароль.',
		'length'		=> 'Длина пароля должна быть не менее 5 и не более 16 символов.',
		'alpha_numeric'		=> 'Пароль должен содержать только цифры и буквы.',
		'login error'	=> 'Пароль введен неверно.',
		'matches'		=> 'Введите идентичный пароль в двух полях для пароля.'
	),

	'password_confirm' => array
	(
		'matches' => 'Поле Подтверждение пароля должно быть заполнено идентично с полем Пароль.'
	),

	'roles' => array
	(
		'required' => 'Вы должны задать не менее одной роли.',
		'values' => 'Выберите роль: ADMIN или USER.'
	),
	
	'resetemail' => array
        (
    	        'required' => 'Введите адрес электронной почты.',
       	        'invalid' => 'Sorry, we don\'t have your email address',
                'email'  => 'Адрес электронной почты введен неверно.',
        ),

);

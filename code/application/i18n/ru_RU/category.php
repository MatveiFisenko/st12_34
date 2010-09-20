<?php

$lang = array
(
	'parent_id' => array
	(
		'required'		=> 'Введите родительскую категорию.',
		'numeric'		=> 'Родительская категория должна быть числом.',
		'exists'		=> 'Указанной родительской категории не существует.',
		'same'			=> 'Новая категория не должна совпадать с родительской.',
	),
	
	'category_title' => array
	(
		'required'		=> 'Введите заголовок.',
		'length'		=> 'Название категории должно содержать не менее 3 и не более 80 символов.',
	),
	
	'category_description' => array
	(
		'required'		=> 'Введите описание.'
	),	
	
	'category_color' => array
	(
		'required'		=> 'Введите цвет.',
		'length'		=> 'Длина цвета должна содержать 6 знаков.',
	),
	
	'category_image' => array
	(
		'valid'		=> 'Загружаемый графический файл содержит ошибки или испорчен.',
		'type'		=> 'Файл испорчен или имеет неправильный формат. Файл должен быть в формате .JPG, .PNG или .GIF.',
		'size'		=> 'Размер файла не должен превышать 50КВ.'
	),	
);
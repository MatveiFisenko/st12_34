<?php

$lang = array
(
	'layer_name' => array
	(
		'required'		=> 'Введите имя.',
		'length'		=> 'Название слоя должно содержать не менее 3 и не более 80 символов.',
	),
	
	'layer_url' => array
	(
		'url' => 'Введите действующий URL. Напр. http://www.ushahidi.com/layerl.kml',
		'atleast' => 'Введите KML/KMZ URL или загрузите файл.',
		'both' => 'You can\'t have both a KML file and a url'
	),
	
	'layer_color' => array
	(
		'required'		=> 'Введите цвет.',
		'length'		=> 'Цвет должен содержать не более 6 символов.',
	),
	
	'layer_file' => array
	(
		'valid'		=> 'Файл повреждён или в неправильном формате',
		'type'		=> 'Файл повреждён или в неправильном формате. Правильные Форматы .KMZ .KML.'
	),	
);
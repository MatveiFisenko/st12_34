<?php
	$lang = array
	(
		'form_title' => array
		(
			'required' => 'Введите название формы.',
			'length'   => 'Название формы должно содержать не менее 3 и не более 100 символов.'
		),
		
		'form_description' => array
		(
			'required' => 'Please enter form\'s Description.'
		),
		
		'form_id' => array
		(
			'default' => 'Форма по умолчанию не может быть удалена.',
			'required' => 'Выберите в какую форму нужно добавить данное поле.',
			'numeric' => 'Выберите в какую форму нужно добавить данное поле.'
		),
		
		'field_type' => array
		(
			'required' => 'Выберите тип поля.',
			'numeric' => 'Выберите правильный тип поля.'
		),
		
		'field_name' => array
		(
			'required' => 'Выберите название поля.',
			'length'   => 'The Field Name must be at least 3 and no more 
				100 characters long.'
		),
		
		'field_default' => array
		(
			'length'   => 'The Field Name must be at least 3 and no more 
				200 characters long.'
		),
		
		'field_required' => array
		(
			'required' => 'Выберите Да или Нет для данного поля',
			'between'   => 'Вы выбрали неправильное значение для поля'
		),
		
		'field_width' => array
		(
			'between' => 'Введите значение от 0 до 300 для ширины поля'
		),
		
		'field_height' => array
		(
			'between' => 'Введите значение от 0 до 50 для высоты поля'
		),
		
		'field_isdate' => array
		(
			'required' => 'Выберите Да или Нет для данного поля',
			'between'   => 'Вы выбрали неправильное значение для поля'
		)
	);

?>
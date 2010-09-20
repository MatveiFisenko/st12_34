<?php
	$lang = array(
		'organization_name' => array
		(
			'required'		=> 'Введите название организации.',
			'length'		=> 'The organization name field must be at least 3 
				and no more 70 characters long.',
			'standard_text' => 'The username field contains disallowed 
				characters.',
		),
		
		'organization_website' => array
		(
			'required' => 'Please provide the organization\'s website.',
			'url' => 'Введите URL правильно. Например: http://www.ushahidi.com'
		),
		
		'organization_description' => array
		(
			'required' => 'Please provide a little description about the 
				organization.'
		),
		
		'organization_email' => array
		(
			'email'		  => 'Адрес электронной почты организации введен неправильно.',
			'length'	  => 'Адрес электронной почты организации должен содержать не менее 4 и не более 100 символов.'
		),
		
		'organization_phone1' => array
		(
			'length'		=> 'Телефонный номер должен содержать не менее 3 и не более 50 символов.'
		),
		
		'organization_phone2' => array
		(
			'length'		=> 'Телефонный номер должен содержать не менее 3 и не более 50 символов.'
		)
	);

?>
<?php defined('SYSPATH') OR die('No direct access allowed.');
/**
 * Errors associated with the core of the system
 */
$lang = array
(
	'there_can_be_only_one' => 'Может быть только одно развёртывание на запрос страницы',
	'uncaught_exception'    => 'Необработанное исключение %s: %s в файле %s в строке %s',
	'invalid_method'        => 'Недействительный метод  %s вызван %s',
	'invalid_property'      => 'Свойство %s отсутствует в классе %s',
	'log_dir_unwritable'    => 'Каталог журнала не доступен для записи: %s',
	'resource_not_found'    => 'Запрошенный ресурс не найден: %s %s',
	'invalid_filetype'      => 'Запрошенный тип файла %s не разрешён в файле конфигурации вида',
	'view_set_filename'     => 'Вы должны задать файл вида до вызова рендеринга',
	'no_default_route'      => 'Установите пожалуйста маршрут по умолчанию в config/routes.php',
	'no_controller'         => 'Ushahidi не смог определить контроллер для обработки этого запроса: %s',
	'page_not_found'        => 'Запрошенная вами страница не найдена: %s.',
	'stats_footer'          => 'Загружено за {execution_time} секунд при использовании {memory_usage} памяти. Сгенерировано Ushahidi v%s.',
	'report_bug'			=> '<a href="%s" id="show_bugs">Сообщить о проблеме в Ushahidi</a>',
	'error_file_line'       => '<tt>%s <strong>[%s]:</strong></tt>',
	'stack_trace'           => 'Трассировка стека',
	'generic_error'         => 'Невозможно выполнить запрос',
	'errors_disabled'       => 'Вы можете перейти к <a href="%s">заглавной странице</a> или <a href="%s">повторить попытку</a>.',

	// Drivers
	'driver_implements'     => 'Драйвер %s библиотеки %s должен реализовывать интерфейс %s',
	'driver_not_found'      => 'Драйвер %s библиотеки %s не найден',

	// Resource names
	'config'                => 'файл конфигурации',
	'controller'            => 'контроллер',
	'helper'                => 'хелпер',
	'library'               => 'библиотека',
	'driver'                => 'драйвер',
	'model'                 => 'модель',
	'view'                  => 'вид',
);

update `settings` set `site_help_page` = 0;

update `page` set `id` = 3 where `id` = 2;

update `page` set `id` = 2 where `id` = 1;

update `page` set `id` = 1 where `id` = 3;

update `page` set `page_description` = 
'<p>Данный сайт был создан для борьбы с ямами на дорогах.</p>

<p>Инициатор проекта - <a href="http://navalny.livejournal.com">Алексей Навальный</a>.</p>

<p>Команда проекта:
<li>Человек1</li>
<li>Человек2</li>
</p>' 
where `id` = 2

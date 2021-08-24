﻿
&НаСервере
Процедура СоздатьСтоДокументовНаСервере()
	Счётчик = 0;
	а = 100;
	Пока Счётчик <= а Цикл
		Счётчик = Счётчик +1;
		Док = Документы.ПриходнаяНакладная.СоздатьДокумент();
		Док.Дата = ТекущаяДата(); 
		Док.Склад = Справочники.Склады.Основной;
		
		НоваяСтрока = Док.Материалы.Добавить();
		НоваяСтрока.Материал = Справочники.Номенклатура.НайтиПоКоду("000000005");
		НоваяСтрока.Цена = 10;
		НоваяСтрока.Количество = Счётчик;
		НоваяСтрока.Сумма = НоваяСтрока.Цена * НоваяСтрока.Количество;
		Док.Записать(РежимЗаписиДокумента.Проведение); 
		
		
		
		
		Док = Документы.ОказаниеУслуги.СоздатьДокумент();
		Док.Дата = ТекущаяДата();
		Док.Склад = Справочники.Склады.Основной;
		Док.Клиент = Справочники.Клиенты.НайтиПоКоду("000000001");
		Док.Мастер = Справочники.Сотрудники.НайтиПоКоду("000000002");
		
		НоваяСтрока = Док.ПереченьНоменклатуры.Добавить();
		НоваяСтрока.Номенклатура = Справочники.Номенклатура.НайтиПоКоду("000000006");
		НоваяСтрока.Цена = 15;
		НоваяСтрока.Количество = Счётчик;
		НоваяСтрока.Сумма = НоваяСтрока.Цена * НоваяСтрока.Количество;
		
		НоваяСтрока = Док.ПереченьНоменклатуры.Добавить();
		НоваяСтрока.Номенклатура = Справочники.Номенклатура.НайтиПоКоду("000000012");
		НоваяСтрока.Цена = 60;
		НоваяСтрока.Количество = Счётчик;
		НоваяСтрока.Сумма = НоваяСтрока.Цена * НоваяСтрока.Количество;
		Док.Записать(РежимЗаписиДокумента.Проведение);
		
	КонецЦикла;	
КонецПроцедуры

&НаКлиенте
Процедура СоздатьСтоДокументов(Команда)
	СоздатьСтоДокументовНаСервере();
КонецПроцедуры

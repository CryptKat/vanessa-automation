﻿
///////////////////////////////////////////////////
// Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	// описание параметров
	// Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "КликНаКартинку(Парам01)", "КликНаКартинку","Затем клик на картинку ""ИмяКартинки""","Эмулирует клик левой кнопкой мышки по картинке. Картинка, поиск которой будет происходить на экране, должна находится в каталоге проекта.", "Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "КликНаТекст(Парам01)", "КликНаТекст","Затем клик на текст ""Текст""","Эмулирует клик левой кнопкой мышки по картинке. Картинка генерируется по переданному тексту.", "Прочее.SikuliX");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "КликПравойКнопкойНаКартинку(Парам01)", "КликПравойКнопкойНаКартинку","Дано клик правой кнопкой на картинку ""ИмяКартинки""","Эмулирует клик правой кнопкой мышки по картинке. Картинка, поиск которой будет происходить на экране, должна находится в каталоге проекта.", "Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "КликПравойКнопкойНаТекст(Парам01)", "КликПравойКнопкойНаТекст","Дано клик правой кнопкой на текст ""Текст""","Эмулирует клик правой кнопкой мышки по картинке. Картинка генерируется по переданному тексту.", "Прочее.SikuliX");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "КурсорККартинке(Парам01)", "КурсорККартинке","Дано курсор к картинке ""ИмяКартинки""","Эмулирует перемещение курсора мышки к картинке. Картинка, поиск которой будет происходить на экране, должна находится в каталоге проекта.", "Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "КурсорКТексту(Парам01)", "КурсорКТексту","Дано курсор к тексту ""Текст""","Эмулирует перемещение курсора мышки к картинке. Картинка генерируется по переданному тексту.", "Прочее.SikuliX");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ДвойнойКликНаКартинку(Парам01)", "ДвойнойКликНаКартинку","Дано двойной клик на картинку ""ИмяКартинки""","Делает двойной клик по картинке. Картинка, поиск которой будет происходить на экране, должна находится в каталоге проекта.", "Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ДвойнойКликНаТекст(Парам01)", "ДвойнойКликНаТекст","Дано двойной клик на текст ""Текст""","Делает двойной клик по картинке. Картинка генерируется по переданному тексту.", "Прочее.SikuliX");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯРисуюСтрелкуОтДо(Парам01,Парам02,ТабПарам)", "ЯРисуюСтрелкуОтДо","Затем я рисую стрелку от ""Картинка1"" до ""Картинка2"""
	+ Символы.ПС + "		|'Цвет'          | 'Зеленый'        |"
	+ Символы.ПС + "		|'Длительность'  | '2000'           |"
	+ Символы.ПС + "		|'ТочкаКуда'     | 'СерединаНиз'    |"
	,"Рисует стрелку от одной картинки до другой. Поиск картинок на экране делается с помощью SikuliX. Если первый параметр равен пустой сроке, тогда точкой ""от"" будет центр экрана. Дополнительные параметры задаются через таблицу Gherkin. "
	+ Символы.ПС + "- Цвет (Color) - строка, из перечисления WebЦвета, например ""Зеленый""."
	+ Символы.ПС + "- Длительность (Duration) - сколько милисекунд стрелка будет находится на экране, например - 2000."
	+ Символы.ПС + "- ТочкаКуда (PointTo), ТочкаОткуда (PointFrom) - место, в которое будет указывать/исходить стрелка. Возможные значения: СерединаНиз (MiddleDown), СерединаВерх (MiddleUp), СерединаПраво (MiddleRight), СерединаЛево (MiddleLeft), Центр (Center).", "Прочее.SikuliX");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯЗапускаюSikuliXСервер()", "ЯЗапускаюSikuliXСервер","И    я запускаю SikuliX сервер","Запускает SikuliX сервер.", "Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯНажимаюХоткей(Парам01,Парам02)", "ЯНажимаюХоткей","Дано я нажимаю хоткей ""ХотКей"" ""Модификатор""","Эмулирует нажатие хоткея с помощью SikuliX.", "Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯНажимаюENTER()", "ЯНажимаюENTER","Дано я нажимаю ENTER","Эмулирует нажатие клавиши ENTER с помощью SikuliX.", "Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯЖдуКартинкиВТечениеСекунд(Парам01,Парам02)", "ЯЖдуКартинкиВТечениеСекунд","И я жду картинки ""ИмяКартинки"" в течение 20 секунд","Ожидает появления картинки на экране в течение нужного числа секунд.", "Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯОпределяюКоординатыКартинкиКак(Парам01,Парам02)", "ЯОпределяюКоординатыКартинкиКак","И я определяю координаты картинки ""ИмяКартинки"" как ""ИмяПеременной""","Определяет коордианты картинки с помощью SikuliX и сохраняет структуру с координатами в переменную", "Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯРисуюРамкуВокругКартинки(Парам01, ТабПарам)", "ЯРисуюРамкуВокругКартинки","И я рисую рамку вокруг картинки ""ИмяКартинки"""
	+ Символы.ПС + "		|'Цвет'          | 'Зеленый'        |"
	+ Символы.ПС + "		|'Длительность'  | '2000'           |"
	+ Символы.ПС + "		|'Толщина'  	 | '3'           	|"
	,"Рисует рамку вокруг картинки."
	+ Символы.ПС + "- Цвет (Color) - строка, из перечисления WebЦвета, например ""Зеленый""."
	+ Символы.ПС + "- Длительность (Duration) - сколько милисекунд рамка будет находится на экране, например - 2000."
	+ Символы.ПС + "- Толщина (Width) - толщина рамки, например - 3.", "Прочее.SikuliX");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯВращаюКолесоМышкиРазСЗажатойКлавишейCtrl(Парам01,Парам02)", "ЯВращаюКолесоМышкиРазСЗажатойКлавишейCtrl","И я вращаю колесо мышки ""Направление"" 3 раз с зажатой клавишей ctrl","Эмулирует вращение колеса мышки с зажатой клавишей Ctrl. Нужно для эмуляции изменения масштаба. Параметр <Направление> может принимать значения ""Вверх"" или ""Вниз""", "Прочее.SikuliX");

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЕстьКартинкаТогда(Парам01)", "ЕстьКартинкаТогда","Если есть картинка ""ИмяКартинки"" Тогда","Условие. Проверяет, есть ли на экране нужная картинка.", "Прочее.SikuliX", "Условие");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ВидеовставкаКартинки(Парам01,Парам02)", "ВидеовставкаКартинки","И видеовставка картинки ""ИмяКартинки"" ""ТекстДиктора""","Добавляет в видео вставку из указанной картинки с указанным текстом диктора.", "Прочее.SikuliX");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯУстанавливаюОсновнойПрофильЦвета(ТабПарам)", "ЯУстанавливаюОсновнойПрофильЦвета","И я устанавливаю основной профиль цвета"
	+ Символы.ПС + "		| 'Шрифт'      | 'arial' |"
	+ Символы.ПС + "		| 'ЦветФона'   | 'white' |"
	+ Символы.ПС + "		| 'ЦветШрифта' | 'black' |"
	+ Символы.ПС + "		| 'Размер'     | '13'    |"
	
	,"Устанавливает параметры для генерации картинок по тексту. Можно передать таблицу параметров либо передать имя готового профиля.", "Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯУстанавливаюПрофильЦвета(Парам01,ТабПарам)", "ЯУстанавливаюПрофильЦвета","И я устанавливаю профиль цвета ""ИмяПрофиля"""
	+ Символы.ПС + "		| 'Шрифт'      | 'arial' |"
	+ Символы.ПС + "		| 'ЦветФона'   | 'white' |"
	+ Символы.ПС + "		| 'ЦветШрифта' | 'black' |"
	+ Символы.ПС + "		| 'Размер'     | '13'    |"
	
	,"Устанавливает параметры для генерации картинок по тексту. Нужно передать имя профиля и значения параметров.", "Прочее.SikuliX");
	
	
	
	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
// Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры

///////////////////////////////////////////////////
// Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
Функция ПереданныеПараметры(ТабПарам)
	Структура = Новый Структура;
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Попытка
			Структура.Вставить(СтрокаТабПарам.Кол1, СтрокаТабПарам.Кол2);
		Исключение
			Ванесса.СообщитьПользователю(Ванесса.Локализовать(ОписаниеОшибки()));
		КонецПопытки;
	КонецЦикла;	 
	
	Возврат Структура;
КонецФункции	

&НаСервереБезКонтекста
Функция АбсолютыйЦвет(ИсходныйЦвет)
    ТабДок = Новый ТабличныйДокумент;
    ТабДок.Область("R1C1").ЦветФона = ИсходныйЦвет;
	ВременныйФайл = ПолучитьИмяВременногоФайла("mxl");
    ТабДок.Записать(ВременныйФайл, ТипФайлаТабличногоДокумента.MXL7); 
    ТабДок.Прочитать(ВременныйФайл);
	УдалитьФайлы(ВременныйФайл);
    АЦвет = ТабДок.Область("R1C1").ЦветФона;
    Возврат АЦвет;
КонецФункции	 
	
&НаКлиенте
// Получает абсолютный цвет из параметров
//
Функция ПолучитьАбсолютныйЦветИзПараметров(ПереданныеПараметры)
	
	Цвет = WebЦвета.ЗеленыйЛес;
	Если ПереданныеПараметры.Свойство("Цвет") Тогда
		Попытка
			Цвет = WebЦвета[ПереданныеПараметры.Цвет];
		Исключение
			Ванесса.СообщитьПользователю(Ванесса.Локализовать(ОписаниеОшибки()));
		КонецПопытки;
	ИначеЕсли ПереданныеПараметры.Свойство("Color") Тогда
		Попытка
			Цвет = WebЦвета[ПереданныеПараметры.Color];
		Исключение
			Ванесса.СообщитьПользователю(Ванесса.Локализовать(ОписаниеОшибки()));
		КонецПопытки;
	КонецЕсли;	 
	АбсолютныйЦвет = АбсолютыйЦвет(Цвет);
	
	Возврат АбсолютныйЦвет;
	
КонецФункции

&НаКлиенте
Функция ЦветЧислом(Цвет)
	АбсолютныйЦвет = АбсолютыйЦвет(Цвет);
	Возврат АбсолютныйЦвет.Синий + 255 * АбсолютныйЦвет.Зеленый + 255 * 255 * АбсолютныйЦвет.Красный;
КонецФункции	 

&НаКлиенте
Функция Центр(Знач Точка1, Знач Точка2)
	Возврат Точка1 + Окр((Точка2 - Точка1) / 2);
КонецФункции	 

&НаКлиенте
Функция ПрочитатьФайлJson(ИмяФайла)
	ЧтениеJSON = Вычислить("Новый ЧтениеJSON");
	ЧтениеJSON.ОткрытьФайл(ИмяФайла);
	СтруктураПараметров = Вычислить("ПрочитатьJSON(ЧтениеJSON)");
	ЧтениеJSON.Закрыть();
	Возврат СтруктураПараметров; 
КонецФункции	 

&НаКлиенте
Функция ПолучитьФайлКартинки(ИмяФайла)
	Возврат Ванесса.ПолучитьФайлКартинки(ИмяФайла); 
КонецФункции	 

&НаКлиенте
Процедура КоординатыТочкиИзТекста(X, Y, Rect, Стр)
	Если Стр = "СерединаПраво" ИЛИ Стр = "MiddleRight" Тогда
		X = Rect.X2;
		Y = Rect.Y1 + Окр((Rect.Y2 - Rect.Y1) / 2);
	ИначеЕсли Стр = "СерединаЛево" ИЛИ Стр = "MiddleLeft" Тогда
		X = Rect.X1;
		Y = Rect.Y1 + Окр((Rect.Y2 - Rect.Y1) / 2);
	ИначеЕсли Стр = "СерединаВерх" ИЛИ Стр = "MiddleUp" Тогда
		X = Rect.X1 + Окр((Rect.X2 - Rect.X1) / 2);
		Y = Rect.Y1;
	ИначеЕсли Стр = "СерединаНиз" ИЛИ Стр = "MiddleDown" Тогда
		X = Rect.X1 + Окр((Rect.X2 - Rect.X1) / 2);
		Y = Rect.Y2;
	ИначеЕсли Стр = "Центр" ИЛИ Стр = "Center" Тогда
		X = Rect.X1 + Окр((Rect.X2 - Rect.X1) / 2);
		Y = Rect.Y1 + Окр((Rect.Y2 - Rect.Y1) / 2);
	КонецЕсли;	 
КонецПроцедуры 

&НаКлиенте
// Затем клик на картинку "Тестовый Элемент 2"
//@КликНаКартинку(Парам01)
Процедура КликНаКартинку(ИмяФайла) Экспорт
	
	Файл = ПолучитьФайлКартинки(ИмяФайла);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя, "\", "/");
	
	СделатьКликНаКартинку(ПутьКФайлу, ИмяФайла);
	
КонецПроцедуры

&НаКлиенте
Функция ПолучитьТекстСкрипта(ИмяСкрипта, ПараметрыСкрипта = Неопределено)
	
	ТекстСкрипта = Ванесса.ОбернутьВКавычки(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\" + ИмяСкрипта + ".sikuli");
	
	Если ПараметрыСкрипта = Неопределено Тогда
		Возврат ТекстСкрипта;
	КонецЕсли;
	
	ТекстСкрипта = ТекстСкрипта + " --args ";
	
	Для Каждого ТекущийПараметр Из ПараметрыСкрипта Цикл
		ТекстСкрипта = ТекстСкрипта + Ванесса.ОбернутьВКавычки(ТекущийПараметр) + " ";
	КонецЦикла;
	
	Возврат ТекстСкрипта;
						
КонецФункции

&НаКлиенте
Процедура СделатьКликНаКартинку(ПутьКФайлу, ИмяФайла)
	
	ПараметрыСкрипта = Новый Массив;
	ПараметрыСкрипта.Добавить(ПутьКФайлу);
	ТекстСкрипта = ПолучитьТекстСкрипта("ClickOnPicture", ПараметрыСкрипта);
	Рез = Ванесса.ВыполнитьSikuliСкрипт(ТекстСкрипта, -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось сделать клик мышкой по картинке <%1>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайла);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 

КонецПроцедуры

&НаКлиенте
// Затем клик на текст "Текст"
//@КликНаТекст(Парам01)
Процедура КликНаТекст(Текст) Экспорт
	Файл = Ванесса.ПолучитьФайлКартинкиИзТекста(Текст);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя, "\", "/");
	
	СделатьКликНаКартинку(ПутьКФайлу, Текст);
	
КонецПроцедуры

&НаКлиенте
Процедура СделатьДвойнойКликНаКартинку(ПутьКФайлу, ИмяФайла)
	
	ПараметрыСкрипта = Новый Массив;
	ПараметрыСкрипта.Добавить(ПутьКФайлу);
	ТекстСкрипта = ПолучитьТекстСкрипта("DoubleClickOnPicture", ПараметрыСкрипта);
	
	Рез = Ванесса.ВыполнитьSikuliСкрипт(ТекстСкрипта, -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось сделать клик мышкой по картинке <%1>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайла);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
КонецПроцедуры

&НаКлиенте
// Дано двойной клик на картинку "СтрокаУпавшегоШагаВСценарииПроверкиЭталонов"
//@ДвойнойКликНаКартинку(Парам01)
Процедура ДвойнойКликНаКартинку(ИмяФайла) Экспорт
	Файл = ПолучитьФайлКартинки(ИмяФайла);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя, "\", "/");
	
	СделатьДвойнойКликНаКартинку(ПутьКФайлу, ИмяФайла);
	
КонецПроцедуры

&НаКлиенте
// Дано двойной клик на текст "СтрокаУпавшегоШагаВСценарииПроверкиЭталонов"
//@ДвойнойКликНаТекст(Парам01)
Процедура ДвойнойКликНаТекст(ИмяФайла) Экспорт
	Файл = Ванесса.ПолучитьФайлКартинкиИзТекста(ИмяФайла);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя, "\", "/");
	
	СделатьДвойнойКликНаКартинку(ПутьКФайлу, ИмяФайла);
	
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьКоординатыКартинки(ПутьКФайлуКартинка, ИмяФайлаОтвета, Картинка)
	
	ПараметрыСкрипта = Новый Массив;
	ПараметрыСкрипта.Добавить(ПутьКФайлуКартинка);
	ПараметрыСкрипта.Добавить(ИмяФайлаОтвета);
	ТекстСкрипта = ПолучитьТекстСкрипта("GetPictureCoordinats", ПараметрыСкрипта);
	
	Рез = Ванесса.ВыполнитьSikuliСкрипт(ТекстСкрипта, -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось найти на экране картинку <%1>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", Картинка);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;		 
	
КонецПроцедуры

&НаКлиенте
// Затем я рисую стрелку от "Vanessa_Automation" до "Запуск_сценариев"
//@ЯРисуюСтрелкуОтДо(Парам01,Парам02)
Процедура ЯРисуюСтрелкуОтДо(КартинкаОт, КартинкаДо, ТабПарам) Экспорт
	ИмяФайлСтрелки = Ванесса.Объект.КаталогИнструментов + "/tools/VideoTools/Arrow.exe";
	Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайлСтрелки) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не найден файл <%1>");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайлСтрелки);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Если ЗначениеЗаполнено(КартинкаОт) Тогда
		ФайлКартинкаОт = ПолучитьФайлКартинки(КартинкаОт);
		ПутьКФайлуКартинкаОт = СтрЗаменить(ФайлКартинкаОт.ПолноеИмя, "\", "/");
		ИмяФайлаОтветаОт = ПолучитьИмяВременногоФайла("json");
		ПолучитьКоординатыКартинки(ПутьКФайлуКартинкаОт, ИмяФайлаОтветаОт, КартинкаОт);
		ДанныеОт = ПрочитатьФайлJson(ИмяФайлаОтветаОт);
		ТочкаОткудаX = Центр(ДанныеОт.X1, ДанныеОт.X2);
		ТочкаОткудаY = Центр(ДанныеОт.Y1, ДанныеОт.Y2);
	Иначе	
		ИнформацияЭкранаКлиента = Вычислить("ПолучитьИнформациюЭкрановКлиента()[0]");
		Ширина = ИнформацияЭкранаКлиента.Ширина;
		Высота = ИнформацияЭкранаКлиента.Высота;
		
		ТочкаОткудаX = Окр(Ширина / 2);
		ТочкаОткудаY = Окр(Высота / 2);
		
		ДанныеОт = Новый Структура;
		ДанныеОт.Вставить("X1", ТочкаОткудаX);
		ДанныеОт.Вставить("X2", ТочкаОткудаX);
		ДанныеОт.Вставить("Y1", ТочкаОткудаY);
		ДанныеОт.Вставить("Y2", ТочкаОткудаY);
	КонецЕсли;	 
	
	ДанныеДо = Неопределено;
	Если ТипЗнч(КартинкаДо) = Тип("Структура") Тогда
		ДанныеДо = КартинкаДо;
	КонецЕсли;	 
	
	Если ДанныеДо = Неопределено Тогда
		ФайлКартинкаДо = ПолучитьФайлКартинки(КартинкаДо);
		ПутьКФайлуКартинкаДо = СтрЗаменить(ФайлКартинкаДо.ПолноеИмя, "\", "/");
		ИмяФайлаОтветаДо = ПолучитьИмяВременногоФайла("json");
		ПолучитьКоординатыКартинки(ПутьКФайлуКартинкаДо, ИмяФайлаОтветаДо, КартинкаДо);
		ДанныеДо = ПрочитатьФайлJson(ИмяФайлаОтветаДо);
	КонецЕсли;	 
	
	ПереданныеПараметры = ПереданныеПараметры(ТабПарам);
	АбсолютныйЦвет = ПолучитьАбсолютныйЦветИзПараметров(ПереданныеПараметры);
	
	ТочкаКудаX   = Центр(ДанныеДо.X1, ДанныеДо.X2);
	ТочкаКудаY   = Центр(ДанныеДо.Y1, ДанныеДо.Y2);
	
	Если ПереданныеПараметры.Свойство("ТочкаОткуда") Тогда
		КоординатыТочкиИзТекста(ТочкаОткудаX, ТочкаОткудаY, ДанныеОт, ПереданныеПараметры.ТочкаОткуда);
	ИначеЕсли ПереданныеПараметры.Свойство("PointFrom") Тогда
		КоординатыТочкиИзТекста(ТочкаОткудаX, ТочкаОткудаY, ДанныеОт, ПереданныеПараметры.PointFrom);
	КонецЕсли;	 
	Если ПереданныеПараметры.Свойство("ТочкаКуда") Тогда
		КоординатыТочкиИзТекста(ТочкаКудаX, ТочкаКудаY, ДанныеДо, ПереданныеПараметры.ТочкаКуда);
	ИначеЕсли ПереданныеПараметры.Свойство("PointTo") Тогда
		КоординатыТочкиИзТекста(ТочкаКудаX, ТочкаКудаY, ДанныеДо, ПереданныеПараметры.PointTo);
	КонецЕсли;	 
	
	Длительность = "10000";
	Если ПереданныеПараметры.Свойство("Длительность") Тогда
		Длительность = ПереданныеПараметры.Длительность;
	ИначеЕсли ПереданныеПараметры.Свойство("Duration") Тогда
		Длительность = ПереданныеПараметры.Duration;
	КонецЕсли;	 
	
	
	СтрокаКоманды = Ванесса.ОбернутьВКавычки(ИмяФайлСтрелки) + " %1 %2 %3 %4 %5 %6 %7 %8 %9";	
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%1", XMLСтрока(ТочкаОткудаX));
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%2", XMLСтрока(ТочкаОткудаY));
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%3", XMLСтрока(ТочкаКудаX));
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%4", XMLСтрока(ТочкаКудаY));
	Попытка
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%5", XMLСтрока(АбсолютныйЦвет.Красный));// R
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%6", XMLСтрока(АбсолютныйЦвет.Зеленый));// G
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%7", XMLСтрока(АбсолютныйЦвет.Синий));// B
	Исключение
		Ванесса.СообщитьПользователю(Ванесса.Локализовать(ОписаниеОшибки()));
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%5", XMLСтрока(10));
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%6", XMLСтрока(10));
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%7", XMLСтрока(10));
	КонецПопытки;
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%8", XMLСтрока(Длительность));// длительность в мс
	СтопФайл = ПолучитьИмяВременногоФайла("txt");
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%9", "stopfilename=" + XMLСтрока(СтопФайл));
	Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(СтрокаКоманды, 0);
КонецПроцедуры


&НаКлиенте
// И    я запускаю SikuliX сервер
//@ЯЗапускаюSikuliXСервер()
Процедура ЯЗапускаюSikuliXСервер() Экспорт
	Ванесса.ЗапуститьSikuliXСевер();
КонецПроцедуры


&НаКлиенте
// Дано я нажимаю хоткей "r" "win"
//@ЯНажимаюХоткей(Парам01,Парам02)
Процедура ЯНажимаюХоткей(ХотКей, Модификатор = "no") Экспорт
	
	ПараметрыСкрипта = Новый Массив;
	ПараметрыСкрипта.Добавить(ХотКей);
	ПараметрыСкрипта.Добавить(НРег(Модификатор));
	ТекстСкрипта = ПолучитьТекстСкрипта("HotKey", ПараметрыСкрипта);
	
	Рез = Ванесса.ВыполнитьSikuliСкрипт(ТекстСкрипта, -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось выполнить эмуляцию хоткея <%1> <%2>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ХотКей);
		Если Модификатор = "no" Тогда
			ТекстСообщения = СтрЗаменить(ТекстСообщения," <%2>", "");
		Иначе	
			ТекстСообщения = СтрЗаменить(ТекстСообщения, "%2", Модификатор);
		КонецЕсли;	 
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
// Дано я нажимаю ENTER
//@ЯНажимаюENTER()
Процедура ЯНажимаюENTER() Экспорт
	ТекстСкрипта = ПолучитьТекстСкрипта("TypeENTER");
	
	Рез = Ванесса.ВыполнитьSikuliСкрипт(ТекстСкрипта, -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось выполнить эмуляцию ENTER.");
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры


&НаКлиенте
// И я жду картинки "ИмяКартинки" в течение 20 секунд
//@ЯЖдуКартинкиВТечениеСекунд(Парам01,Парам02)
Процедура ЯЖдуКартинкиВТечениеСекунд(ИмяКартинки, КолСек) Экспорт
	Файл = ПолучитьФайлКартинки(ИмяКартинки);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя, "\", "/");
	
	ПараметрыСкрипта = Новый Массив;
	ПараметрыСкрипта.Добавить(ПутьКФайлу);
	ПараметрыСкрипта.Добавить(XMLСтрока(КолСек));
	ТекстСкрипта = ПолучитьТекстСкрипта("WaitPict", ПараметрыСкрипта);
	
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("Таймаут", КолСек);
	Рез = Ванесса.ВыполнитьSikuliСкрипт(ТекстСкрипта, -1, Истина,, ДопПараметры);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось дождаться картинки <%1> в течение <%2> секунд.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяКартинки);
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%2", КолСек);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
Функция ПолучитьДанныеКартинкиНаЭкране(ИмяКартинки)
	ФайлКартинка = ПолучитьФайлКартинки(ИмяКартинки);
	ПутьКФайлуКартинки = СтрЗаменить(ФайлКартинка.ПолноеИмя, "\", "/");
	ИмяФайлаОтвета = ПолучитьИмяВременногоФайла("json");
	
	ПараметрыСкрипта = Новый Массив;
	ПараметрыСкрипта.Добавить(ПутьКФайлуКартинки);
	ПараметрыСкрипта.Добавить(ИмяФайлаОтвета);
	ТекстСкрипта = ПолучитьТекстСкрипта("GetPictureCoordinats", ПараметрыСкрипта);
	
	Рез = Ванесса.ВыполнитьSikuliСкрипт(ТекстСкрипта, -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось найти на экране картинку <%1>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяКартинки);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	Данные = ПрочитатьФайлJson(ИмяФайлаОтвета);
	Возврат Данные;
КонецФункции	 

&НаКлиенте
// И я определяю координаты картинки "ИмяКартинки" как "ИмяПеременной"
//@ЯОпределяюКоординатыКартинкиКак(Парам01,Парам02)
Процедура ЯОпределяюКоординатыКартинкиКак(ИмяКартинки, ИмяПеременной) Экспорт
	Данные = ПолучитьДанныеКартинкиНаЭкране(ИмяКартинки);
	Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной, Данные);
КонецПроцедуры

&НаКлиенте
// И я рисую рамку вокруг картинки "ИмяКартинки"
//@ЯРисуюРамкуВокругКартинки(Парам01)
Процедура ЯРисуюРамкуВокругКартинки(ИмяКартинки, ТабПарам) Экспорт
	Данные = ПолучитьДанныеКартинкиНаЭкране(ИмяКартинки);
	
	ИмяФайлРамки = Ванесса.Объект.КаталогИнструментов + "/tools/VideoTools/Rectangle.exe";
	Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайлРамки) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не найден файл <%1>");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайлРамки);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	 
	ПереданныеПараметры = ПереданныеПараметры(ТабПарам);
	АбсолютныйЦвет = ПолучитьАбсолютныйЦветИзПараметров(ПереданныеПараметры);
	
	Если ПереданныеПараметры.Свойство("Толщина") Тогда
		Толщина = ПереданныеПараметры.Толщина;
	ИначеЕсли ПереданныеПараметры.Свойство("Width") Тогда
		Толщина = ПереданныеПараметры.Width;
	Иначе
		Толщина = "3";
	КонецЕсли;
	
	Если ПереданныеПараметры.Свойство("Длительность") Тогда
		Длительность = ПереданныеПараметры.Длительность;
	ИначеЕсли ПереданныеПараметры.Свойство("Duration") Тогда
		Длительность = ПереданныеПараметры.Duration;
	Иначе
		Длительность = "10000";
	КонецЕсли;	 
	
	СтрокаКоманды = Ванесса.ОбернутьВКавычки(ИмяФайлРамки) + " %1 %2 %3 %4 %5 %6 %7 %8 %9 %10";	
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%1", XMLСтрока(Данные.X1));
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%2", XMLСтрока(Данные.Y1));
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%3", XMLСтрока(Данные.X2));
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%4", XMLСтрока(Данные.Y2));
	Попытка
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%5", XMLСтрока(АбсолютныйЦвет.Красный));// R
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%6", XMLСтрока(АбсолютныйЦвет.Зеленый));// G
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%7", XMLСтрока(АбсолютныйЦвет.Синий));// B
	Исключение
		Ванесса.СообщитьПользователю(Ванесса.Локализовать(ОписаниеОшибки()));
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%5", XMLСтрока(10));
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%6", XMLСтрока(10));
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%7", XMLСтрока(10));
	КонецПопытки;
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%8", XMLСтрока(Длительность));// длительность в мс
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%9", XMLСтрока(Толщина));// толщина линии
	СтопФайл = ПолучитьИмяВременногоФайла("txt");
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%10", "stopfilename=" + XMLСтрока(СтопФайл));
	Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(СтрокаКоманды, 0);
	
КонецПроцедуры

&НаКлиенте
// И я вращаю колесо мышки "Вверх" 3 раз с зажатой клавишей ctrl
//@ЯВращаюКолесоМышкиРазСЗажатойКлавишейCtrl(Парам01,Парам02)
Процедура ЯВращаюКолесоМышкиРазСЗажатойКлавишейCtrl(Направление, КоличествоРаз) Экспорт
	Если Нрег(Направление) = "вверх" Тогда
		ПараметрНаправление = "up";
	ИначеЕсли Нрег(Направление) = "up" Тогда
		ПараметрНаправление = "up";
	ИначеЕсли Нрег(Направление) = "вниз" Тогда
		ПараметрНаправление = "down";
	ИначеЕсли Нрег(Направление) = "down" Тогда
		ПараметрНаправление = "down";
	Иначе
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Неверно указано значение параметра направления вращения колеса мышки: <%1>. Возможные значения: Вверх или Вниз.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", Направление);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	ПараметрыСкрипта = Новый Массив;
	ПараметрыСкрипта.Добавить(Направление);
	ПараметрыСкрипта.Добавить(XMLСтрока(КоличествоРаз));
	ТекстСкрипта = ПолучитьТекстСкрипта("WheelCtrl", ПараметрыСкрипта);
	
	Рез = Ванесса.ВыполнитьSikuliСкрипт(ТекстСкрипта, -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось выполнить эмуляцию вращения колеса мышки в направлении <%1>, количество итераций <%2>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", Направление);
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%2", XMLСтрока(КоличествоРаз));
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
// Если есть картинка "ИмяКартинки" Тогда
//@ЕстьКартинкаТогда(Парам01)
Процедура ЕстьКартинкаТогда(ИмяКартинки) Экспорт
	Файл = ПолучитьФайлКартинки(ИмяКартинки);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя, "\", "/");
	
	ИмяФайлаОтвета = ПолучитьИмяВременногоФайла("json");

	ПараметрыСкрипта = Новый Массив;
	ПараметрыСкрипта.Добавить(ПутьКФайлу);
	ПараметрыСкрипта.Добавить(ИмяФайлаОтвета);
	ТекстСкрипта = ПолучитьТекстСкрипта("PictExists", ПараметрыСкрипта);
	
	Рез = Ванесса.ВыполнитьSikuliСкрипт(ТекстСкрипта, -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось выполнить SikuliX скрипт <%1>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", "PictExists");
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Данные = ПрочитатьФайлJson(ИмяФайлаОтвета);
	Если Число(Данные.exists) = 1 Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
Процедура СделатьКликПравойКнопкойМышиНаКартинку(ПутьКФайлу, ИмяФайла)
	
	ПараметрыСкрипта = Новый Массив;
	ПараметрыСкрипта.Добавить(ПутьКФайлу);
	ТекстСкрипта = ПолучитьТекстСкрипта("ClickRightOnPicture", ПараметрыСкрипта);
	
	Рез = Ванесса.ВыполнитьSikuliСкрипт(ТекстСкрипта, -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось сделать клик правой кнопкой мышки по картинке <%1>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайла);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 

КонецПроцедуры

&НаКлиенте
// Дано клик правой кнопкой на картинку "Тогда открылось окно"
//@КликПравойКнопкойНаКартинку(Парам01)
Процедура КликПравойКнопкойНаКартинку(ИмяФайла) Экспорт
	Файл = ПолучитьФайлКартинки(ИмяФайла);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя, "\", "/");
	
	СделатьКликПравойКнопкойМышиНаКартинку(ПутьКФайлу, ИмяФайла);
	
КонецПроцедуры

&НаКлиенте
// Дано клик правой кнопкой на текст "Текст"
//@КликПравойКнопкойНаТекст(Парам01)
Процедура КликПравойКнопкойНаТекст(Текст) Экспорт
	Файл = Ванесса.ПолучитьФайлКартинкиИзТекста(Текст);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя, "\", "/");
	
	ПараметрыСкрипта = Новый Массив;
	ПараметрыСкрипта.Добавить(ПутьКФайлу);
	ТекстСкрипта = ПолучитьТекстСкрипта("ClickRightOnPicture", ПараметрыСкрипта);
	
	СделатьКликПравойКнопкойМышиНаКартинку(ПутьКФайлу, ПутьКФайлу);
	 
КонецПроцедуры

&НаКлиенте
// Дано курсор к картинке "Свернуть до фич"
//@КурсорККартинке(Парам01)
Процедура КурсорККартинке(ИмяФайла) Экспорт
	Файл = ПолучитьФайлКартинки(ИмяФайла);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя, "\", "/");
	
	Рез = Ванесса.ПереместитьКурсорМышкиККартинке(ПутьКФайлу);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось переместить курсор мышки к картинке <%1>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайла);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
// Дано курсор к тексту "Текст"
//@КурсорКТексту(Парам01)
Процедура КурсорКТексту(ИмяФайла) Экспорт
	Файл = Ванесса.ПолучитьФайлКартинкиИзТекста(ИмяФайла);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя, "\", "/");
	
	Рез = Ванесса.ПереместитьКурсорМышкиККартинке(ПутьКФайлу);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось переместить курсор мышки к картинке <%1>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ПутьКФайлу);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры


&НаКлиенте
// И видеовставка картинки "Тест"
//@ВидеовставкаКартинки(Парам01)
Функция ВидеовставкаКартинки(ИмяКартинки, ТекстДиктора) Экспорт
	// Чтобы вызвать исключение, если картинки нет.
	Файл = ПолучитьФайлКартинки(ИмяКартинки);
КонецФункции


&НаКлиенте
// И я устанавливаю основной профиль цвета
//@ЯУстанавливаюОсновнойПрофильЦвета(ТабПарам)
Функция ЯУстанавливаюОсновнойПрофильЦвета(ТабПарам) Экспорт
	Если ТипЗнч(ТабПарам) = Тип("Строка") Тогда
		ИмяПрофиля = ТабПарам;
		ДанныеПрофиля = Ванесса.ДанныеПрофиляПоискаКартинкиСТекстом(ИмяПрофиля);
		КонтекстСохраняемый.Вставить("ОсновнойПрофильПоискаКартинкиСТекстом", ДанныеПрофиля);
	Иначе	
		ДанныеПрофиля = Новый Структура;
		Для Каждого СтрокаТабПарам Из ТабПарам Цикл
			ДанныеПрофиля.Вставить(СтрокаТабПарам.Кол1, СтрокаТабПарам.Кол2);
		КонецЦикла;	 
		
		КонтекстСохраняемый.Вставить("ОсновнойПрофильПоискаКартинкиСТекстом", ДанныеПрофиля);
	КонецЕсли;	 
	
КонецФункции

&НаКлиенте
// И я устанавливаю профиль цвета "ИмяПрофиля"
//@ЯУстанавливаюПрофильЦвета(Парам01,ТабПарам)
Функция ЯУстанавливаюПрофильЦвета(ИмяПрофиля, ТабПарам) Экспорт
	ДанныеПрофиля = Новый Структура;
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		ДанныеПрофиля.Вставить(СтрокаТабПарам.Кол1, СтрокаТабПарам.Кол2);
	КонецЦикла;	 
	Ванесса.УстановитьПрофильПоискаКартинкиСТекстом(ИмяПрофиля, ДанныеПрофиля);
КонецФункции

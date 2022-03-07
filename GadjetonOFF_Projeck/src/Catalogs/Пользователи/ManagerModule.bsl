
 
// Получить пользователя.
// 
// Параметры:
//  Пользователь - ПользовательИнформационнойБазы
// 
// Возвращаемое значение:
//  - СправочникСсылка.Пользователи
Функция ПолучитьПользователя(Пользователь) Экспорт
	ПользвательСсылка = НайтиПоНаименованию(Пользователь.Имя);
	
	Если Не ЗначениеЗаполнено(ПользвательСсылка) Тогда
		
		НовыйПользователь = СоздатьЭлемент();
		НовыйПользователь.Наименование = Пользователь.Имя;
		НовыйПользователь.ПолноеИмя = Пользователь.ПолноеИмя;
		
		НовыйПользователь.ЗаполнитьТаблицуРолей();
		НовыйПользователь.Записать();
		
		ПользвательСсылка  = НовыйПользователь.Ссылка;
		
	КонецЕсли;
	
	Возврат ПользвательСсылка;
	 
КонецФункции
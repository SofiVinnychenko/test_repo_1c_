﻿&НаКлиенте
Процедура ЗапретОприходованияПриИзменении(Элемент)
  Элементы.ДатаЗапретаОприходования.ТолькоПросмотр = НЕ Объект.ЗапретОприходования;
  Если Объект.ДатаЗапретаОприходования = Истина Тогда
    Объект.ДатаЗапретаОприходования = ТекущаяДата();
  Иначе 
    Объект.ДатаЗапретаОприходования = Неопределено;
  КонецЕсли;
КонецПроцедуры
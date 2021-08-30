@MainSCJ

Feature:

    Scenario Outline: 20_CombineIntoUnitedShipping
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this element "Создать накладную"
        And  I add "random number" to the inputfields "Номер заказа"
        And  I add "random number order" to the inputfields "Номер заказа клиента"
        And  I add "random number SCJ in Sap" to the inputfields "Номер заказа SCJ in Sap"
         # Добавление склада отгрузки и доставки
        And I select "<Ship To Code>" to the inputfields "Ship To Code *"
        And I add "Дата отгрузки" shipping date "<shipping date>" and "Дата доставки *" delivery date "<delivery date>"
        And  I add "random delivery number" to the inputfields "Номер доставки"
        #Добавление ОВХ
        And  I add "<countMonoPallet>" to the inputfields "Кол-во моно-паллет"
        And  I add "<countMixPallet>" to the inputfields "Кол-во mix-паллет"
        And  I add "<countBox>" to the inputfields "Предварительное кол-во коробок"
        And  I add "<weight>" to the inputfields "Плановый вес"
        And  I add "<volume>" to the inputfields "Объем"
        And I click on this button "Кнопка Сохранить"
        And I expect this element "Loader" is not visible
         # Проверка что заказ создался в статусе Создан.
        And I add "random number" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then I see element "random number" in status "Создан"
        # Заходим в накладную чтобы передвинуть статус
        And I click in random element "random number"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        # перевести  накладную в статус "В перевозке"
        And I moving waybills status forward "В перевозке"
        # Заходим в перевозку
        And I click on this element "Номер перевозки"
        And thes element "Окно при создании новой перевозки" contains the text "Водитель"
        # Заполнение блока информация водителя
        And I select "<driver>" to the inputfields "Водитель"
        # Заполнение блока информация
        And I select "<transportCompany>" to the inputfields "Транспортная компания"
        And I select "<tariffication>" to the inputfields "Способ тарификации"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        And I add data "<cost>" to the inputfields "Базовая стоимость перевозки, без НДС"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # перевести  перевозку в статус "В перевозке"
        And I moving shippings status forward "Отправить заявку в ТК"
         # Переходим в накладные
        When I click on this element "Накладные"
        And I reload page
        And I expect this element "Loader" is not visible
        And I wait on elements "Orders"
        # Создаем 2ю накладную
        Then I click on this element "Создать накладную"
        And  I add "random number 2" to the inputfields "Номер заказа"
        And  I add "random number order 2" to the inputfields "Номер заказа клиента"
        And  I add "random number SCJ in Sap 2" to the inputfields "Номер заказа SCJ in Sap"
         # Добавление склада отгрузки и доставки
        And I select "<Ship To Code>" to the inputfields "Ship To Code *"
        And I add "Дата отгрузки" shipping date "<shipping date>" and "Дата доставки *" delivery date "<delivery date>"
        And  I add "random delivery number" to the inputfields "Номер доставки"
        #Добавление ОВХ
        And  I add "<countMonoPallet>" to the inputfields "Кол-во моно-паллет"
        And  I add "<countMixPallet>" to the inputfields "Кол-во mix-паллет"
        And  I add "<countBox>" to the inputfields "Предварительное кол-во коробок"
        And  I add "<weight>" to the inputfields "Плановый вес"
        And  I add "<volume>" to the inputfields "Объем"
        And I click on this button "Кнопка Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что заказ создался в статусе Создан.
        And I add "random number 2" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then I see element "random number 2" in status "Создан"
        # Заходим в накладную чтобы передвинуть статус
        And I click in random element "random number 2"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        # перевести  накладную в статус "В перевозке"
        And I moving waybills status forward "В перевозке"
        # Заходим в перевозку
        And I click on this element "Номер перевозки"
        And thes element "Окно при создании новой перевозки" contains the text "Водитель"
        # Заполнение блока информация водителя
        And I select "<driver>" to the inputfields "Водитель"
        # Заполнение блока информация
        And I select "<transportCompany>" to the inputfields "Транспортная компания"
        And I select "<tariffication>" to the inputfields "Способ тарификации"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        And I add data "<cost>" to the inputfields "Базовая стоимость перевозки, без НДС"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # перевести  перевозку в статус "В перевозке"
        And I moving shippings status forward "Отправить заявку в ТК"
        # Заходим в перевозки
        When I click on this element "Перевозки"
        And I wait on elements "Колонка транспортная компания"
        # Проверка что перевозка создалась в статусе Заявка отправлена в ТК.
        And  I add "<transportCompany>" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then I see element "<transportCompany>" in status "Заявка отправлена в ТК"
        # Выставить фильтр Способ тарификации в LTL
        And I set filter checkbox "<tariffication>" in field "Способ тарификации"
        # Выставить фильтр Статус перевозки в Заявка отправлена в ТК
        And I set filter checkbox "Заявка отправлена в ТК" in field "Статус перевозки"
        # Выставить фильтр Дата создания перевозки в системе за сегодня
        And I set filter data "0" in field "Дата создания перевозки в системе"
       # Выставляем галку и переводим в статус "В перевозке" через МО
        When I click on this element "Все чекбоксы"
        And I wait on elements "Панель массовых операций"
        Then I click on this element "Доп опции МО"
        And I click on this in span "Объединить в общую перевозку"
        # Выставляем дату отгрузки общей перевозки
        And I select data "1" to the inputfields "Отгрузка общей перевозки *"
        # Выставляем Тип ТС общей перевозки
        And I select "Тент 20т" to the inputfields "Тип ТС общей перевозки *"
        # Добавление
        And I click on this in button "Ok"
        And I expect this element "Loader" is not visible
        # переходим в накладные,заходим в перевозку и проверяем что общая перевозка создалась.
        # Переходим в накладные
        When I click on this element "Накладные"
        And I wait on elements "Orders"
        # Заходим в накладную чтобы перейти в перевозку
        And I click in random element "random number"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        # Заходим в перевозку
        And I click on this element "Номер перевозки"
        And thes element "Окно при создании новой перевозки" contains the text "Водитель"
        # Проверка истории перевозки
        And thes element "История в перевозке" contains the text "Значение поля Общая перевозка изменено на"

        # Заходим в перевозки
        When I click on this element "Перевозки"
        And I wait on elements "Колонка транспортная компания"
        # Проверка что перевозка создалась в статусе Заявка отправлена в ТК.
        And  I add "<transportCompany>" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then I see element "<transportCompany>" in status "Заявка отправлена в ТК"
        # Выставить фильтр Способ тарификации в LTL
        And I set filter checkbox "<tariffication>" in field "Способ тарификации"
        # Выставить фильтр Статус перевозки в Заявка отправлена в ТК
        And I set filter checkbox "Заявка отправлена в ТК" in field "Статус перевозки"
        # Выставить фильтр Дата создания перевозки в системе за сегодня
        And I set filter data "0" in field "Дата создания перевозки в системе"
       # Выставляем галку и переводим в статус "В перевозке" через МО
        When I click on this element "Все чекбоксы"
        And I wait on elements "Панель массовых операций"
        Then I click on this element "Доп опции МО"
        And I click on this in span "Исключить из общей перевозки"
        And I check "Исключить из общей перевозки для 2" and answer "OK"
        # Переходим в накладные
        When I click on this element "Накладные"
        And I wait on elements "Orders"
        # Заходим в накладную чтобы перейти в перевозку
        And I click in random element "random number"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        # Заходим в перевозку
        And I click on this element "Номер перевозки"
        And thes element "Окно при создании новой перевозки" contains the text "Водитель"
        # Проверка истории перевозки
        And thes element "История в перевозке" contains the text "Значение поля Общая перевозка изменено на '(пусто)'"
        And I wait the element "<driver>" to not be checked in field "Водитель"

        # Переводим перевозки в статус "Подтвердить заявку" чтобы не мешались при множественном запуске.
        When I click on this element "Перевозки"
        And I wait on elements "Колонка транспортная компания"
        # Выставляем фильтры
        Then I see element "<transportCompany>" in status "Заявка отправлена в ТК"
        # Выставить фильтр Способ тарификации в LTL
        And I set filter checkbox "<tariffication>" in field "Способ тарификации"
        # Выставить фильтр Статус перевозки в Заявка отправлена в ТК
        And I set filter checkbox "Заявка отправлена в ТК" in field "Статус перевозки"
        # Выставить фильтр Дата создания перевозки в системе за сегодня
        And I set filter data "0" in field "Дата создания перевозки в системе"
        # Выставляем галку и переводим в статус "В перевозке" через МО
        When I click on this element "Все чекбоксы"
        And I wait on elements "Панель массовых операций"
        #And I click on this element "Доп опции МО"
        And I click on this in button "Подтвердить заявку"
        And I check "Подтвердить заявку для 2" and answer "OK"
        Then I expect this element "Loader" is not visible

        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        Examples:
            | login coordinator         | Ship To Code | countMonoPallet | countMixPallet | shipping date | delivery date | countBox | weight | volume | tariffication | transportCompany    | driver                   |cost  |
            | SCJ Transport Coordinator | Котовский    | 4               | 4              | 1             | 7             | 12       | 5      | 4      | LTL           | Симпл Деливери Груп | Родин Юрий Александрович |18300 |

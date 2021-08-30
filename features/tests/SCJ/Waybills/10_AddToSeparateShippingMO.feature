@MainSCJ

Feature:

    Scenario Outline: 10_AddToSeparateShippingMO
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
         # Выставляем галку и переводим в статус "В перевозке" через МО
        When I click on this element "Все чекбоксы"
        And I wait on elements "Панель массовых операций"
        And I click on this in button "Создать перевозку"
        And I check "создать перевозку" and answer "OK"
        And I expect this element "Loader" is not visible
        # Проверка что статус накладной в "В перевозке"
        Then I see element "random number" in status "В перевозке"
        # Создаем 2ю накладную
        When I click on this element "Создать накладную"
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
         # Добавляем 2ю накладную в перевозку через МО к первой накладной с перевозкой.
        And I add "random number" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And I click in random element "random number"
        And I read number carriages "SCJ" and add him in MO
         # Проверка что статус накладной в "В перевозке"
        And I add "random number 2" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And I see element "random number 2" in status "В перевозке"
        # Перевод перевозки в статус Подтверждена
        # Заходим в перевозку
        And I click in random element "random number 2"
        And I click on this element "Номер перевозки"
        And thes element "Окно при создании новой перевозки" contains the text "Водитель"
        # Заполнение блока информация
        And I select "<transportCompany>" to the inputfields "Транспортная компания"
        And I select "<tariffication>" to the inputfields "Способ тарификации"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        And I add data "<cost>" to the inputfields "Базовая стоимость перевозки, без НДС"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Смена статуса перевозки
        When I click on this element "Опции смены статуса в перевозке"
        And I click on this in span "Отправить заявку в ТК"
        And I check "Отправить заявку в ТК" and answer "Да"
        # Смена статуса перевозки
        Then I click on this element "Опции смены статуса в перевозке"
        And I click on this in span "Подтвердить заявку"
        And I check "Подтвердить заявку" and answer "Да"
        # Переходим в накладные
        When I click on this element "Накладные"
        And I wait on elements "Orders"
        # Проверка что статус накладной в "В перевозке"
        And I add "random number 2" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then I see element "random number 2" in status "Подтверждена ТК"
        When I click on this element "Все чекбоксы"
        And I wait on elements "Панель массовых операций"
        # Выделение накладной в отдельную перевозку
        And I click on this element "Доп опции МО"
        And I click on this in span "Выделить в отдельную перевозку"
        And I check "Выделить в отдельную перевозку" and answer "Да"
        And I expect this element "Loader" is not visible
        # Проверка что номера перевозок из сообщения и из грида совпадают
        Then I read number carriages "SCJ" and check him in grid

        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        Examples:
            | login coordinator         | Ship To Code | countMonoPallet | countMixPallet | shipping date | delivery date | countBox | weight | volume | transportCompany    | tariffication | cost  |
            | SCJ Transport Coordinator | Котовский    | 4               | 4              | 1             | 7             | 12       | 7500   | 4      | Симпл Деливери Груп | FTL           | 18300 |

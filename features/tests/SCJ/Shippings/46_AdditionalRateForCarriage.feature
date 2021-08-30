@MainRoust

Feature: Create tariff and check shippings

    Scenario Outline:  46_AdditionalRateForCarriage ч1
        #Создаем тариф
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        And I click on this in a "Тарифы"
        And I wait on elements "Грид Тарифы"
        And I click on this element "Создать тариф"
        And thes element "Окно при создании нового тарифа" contains the text "Транспортная компания *"
        When I select "<transportCompany>" to the inputfields "Транспортная компания *"
        And I select "<shipping warehouse>" to the inputfields "Склад отгрузки"
        And I select "<delivery warehouse>" to the inputfields "Склад доставки"
        And I select "<vehicle type>" to the inputfields "Тип ТС"
        And I select "<tariffications type>" to the inputfields "Способ тарификации"
        And I add "Дата начала действия тарифов *" shipping date "<effective date>" and "Дата окончания действия тарифов *" delivery date "<expiration date>"
        And I add data "<FTL Rate>" to the inputfields "Ставка FTL"
        And I add data "<Additional Rate>" to the inputfields "Ставка за доп. точку"
        And I add data "<Forwarder Rate>" to the inputfields "Доставка на склад экспедитора"
        And I add data "<Pooling Rate>" to the inputfields "Ставка за паллету Pooling"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        And I check "old tariff" and answer "Да"
        Then  I click on this element "logout"

        Examples:
            | login coordinator         | shipping warehouse | delivery warehouse | transportCompany    | vehicle type | tariffications type | FTL Rate | effective date | expiration date |Additional Rate|Forwarder Rate|Pooling Rate|
            | SCJ Transport Coordinator | Томилино           | Котовский          | Симпл Деливери Груп | Тент 20т     | FTL                 | 58700    | 0              | 30              |4800          | 5100     |2300    |

    Scenario Outline:  46_AdditionalRateForCarriage ч2
        #Создаем 1 накладную
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
        # Создаем 2ю накладную
        When I click on this element "Создать накладную"
        And  I add "random number 2" to the inputfields "Номер заказа"
        And  I add "random number order 2" to the inputfields "Номер заказа клиента"
        And  I add "random number SCJ in Sap 2" to the inputfields "Номер заказа SCJ in Sap"
         # Добавление склада отгрузки и доставки
        And I select "<Ship To Code 2>" to the inputfields "Ship To Code *"
        And I add "Дата отгрузки" shipping date "<shipping date>" and "Дата доставки *" delivery date "<delivery date2>"
        And  I add "random delivery number" to the inputfields "Номер доставки"
        #Добавление ОВХ
        And  I add "<countMonoPallet2>" to the inputfields "Кол-во моно-паллет"
        And  I add "<countMixPallet>" to the inputfields "Кол-во mix-паллет"
        And  I add "<countBox2>" to the inputfields "Предварительное кол-во коробок"
        And  I add "<weight2>" to the inputfields "Плановый вес"
        And  I add "<volume2>" to the inputfields "Объем"
        And I click on this button "Кнопка Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что заказ создался в статусе Создан.
        And I add "random number 2" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then I see element "random number 2" in status "Создан"
        # Выставляем галку и переводим в статус "В перевозке" через МО
        And I add "random number" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        When I click on this element "Все чекбоксы"
        And I wait on elements "Панель массовых операций"
        Then I click on this element "Доп опции МО"
        And I click on this in span "Объединить в перевозку"
        And I check "Объединить в перевозку для 2" and answer "Да"
        And I expect this element "Loader" is not visible
        # Проверка что статус накладной в "В перевозке"
        And I add "random number" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And I see element "random number" in status "В перевозке"
        # Заходим в накладную
        And I click in random element "random number"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        # Заходим в перевозку
        And I click on this element "Номер перевозки"
        And thes element "Окно при создании новой перевозки" contains the text "Водитель"
        # Подбираем перевозчика
        And I click on this in button "Подбор перевозчика"
        And I check alert message
        #Проверяем ставку
        And thes element "История в перевозке" contains the text "Значение поля Общая стоимость перевозки, без НДС изменено на '68000'"
        And thes element "История в перевозке" contains the text "Значение поля Общая стоимость перевозки, с НДС изменено на '81600' "
        And thes element "История в перевозке" contains the text "Значение поля Базовая стоимость перевозки, без НДС изменено на '58700'"
        And thes element "История в перевозке" contains the text "Значение поля Стоимость за доп.точку, без НДС изменено на '4800'"
        #Удаляем 2ю накладную из перевозки
        When I click on this element "Накладные"
        And I add "random number 2" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        # Заходим в накладную
        And I click in random element "random number 2"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        # перевести  накладную в статус "Удалена"
        Then I click on this element "Опции смены статуса в накладной"
        And I click on this in span "Убрать из перевозки"
        And I check "Убрать из перевозки" and answer "Да"
        # Проверяем историю
        And thes element "История в накладной" contains the text "Значение поля Базовая стоимость транспортировки, без НДС изменено на '(пусто)'"
        And thes element "История в накладной" contains the text "Значение поля Общая стоимость транспортировки, с НДС изменено на '(пусто)'"
        And thes element "История в накладной" contains the text "Значение поля Общая стоимость транспортировки, без НДС изменено на '(пусто)'"
        # Проверяем историю 1 накладной
        When I click on this element "Накладные"
        And I add "random number" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        # Заходим в накладную
        And I click in random element "random number"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        #Проверяем историю
        And thes element "История в накладной" contains the text "Значение поля Общая стоимость транспортировки, без НДС изменено на '58700'"
        Then thes element "История в накладной" contains the text "Значение поля Общая стоимость транспортировки, с НДС изменено на '70440'"
        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        Examples:
            | login coordinator         | Ship To Code | Ship To Code 2|countMonoPallet | countMonoPallet2|countMixPallet | shipping date | delivery date | delivery date2|countBox |countBox2|  weight | weight2|volume |volume2|
            | SCJ Transport Coordinator | Котовский    |   Котишкин    |16               |2                |2              | 1             | 7             |           5   |12       |2        | 18000      |1000   | 14      |1 |


    Scenario Outline:  47_AdditionalRateForCarriage ч3
        # Удаляем тариф
        And I click on this in a "Тарифы"
        And I wait on elements "Грид Тарифы"
        And  I add "<transportCompany>" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And I click on this element "Первый элемент в списке"
        And thes element "Окно при создании нового тарифа" contains the text "Транспортная компания *"
        And I click on this element "Удалить тариф"
        And I check "удалить эту запись" and answer "Да"
        And I expect this element "Loader" is not visible

        Examples:
            | transportCompany    |
            | Симпл Деливери Груп |

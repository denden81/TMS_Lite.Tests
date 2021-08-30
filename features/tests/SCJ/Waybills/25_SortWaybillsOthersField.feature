@MainSCJ

Feature:

    Scenario Outline: 25_SortWaybillsOthersField
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this element "Создать накладную"
        And  I add "random number begin SCJ" to the inputfields "Номер заказа"
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
        And I add "random number begin SCJ" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then I see element "random number begin SCJ" in status "Создан"
         # Выставляем фильтры
        And I set filter "random number begin SCJ" in field "Уникальный номер"
        # Выставить фильтр Статус накладной
        And I set filter checkbox "Создан" in field "Статус накладной"
        # Выставить фильтр Клиент
        And I set filter checkbox "АО КТ" in field "Клиент"
        # Выставить фильтр Дата доставки
        And I set filter data "<delivery date>" in field "Дата доставки"

        # Сортируем Статус накладной и проверяем результат
        And I click sort on this up "Статус накладной"
        When I see element "random number begin SCJ" in status "Создан"
        And I click sort on this down "Статус накладной"
        Then I see element "random number begin SCJ" in status "Создан"

        # Сортируем Клиент и проверяем результат
        And I click sort on this up "Клиент"
        When I see element "random number begin SCJ" in status "Создан"
        And I click sort on this down "Клиент"
        Then I see element "random number begin SCJ" in status "Создан"

        # Сортируем Дату доставки и проверяем результат
        And I click sort on this up "Дата доставки"
        When I see element "random number begin SCJ" in status "Создан"
        And I click sort on this down "Дата доставки"
        Then I see element "random number begin SCJ" in status "Создан"
        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        Examples:
            | login coordinator         | Ship To Code | countMonoPallet | countMixPallet | shipping date | delivery date | countBox | weight | volume |waybill|
            | SCJ Transport Coordinator | Котовский    | 4               | 4              | 1             | 7             | 12       | 7500      | 4      | Уникальный номер    |

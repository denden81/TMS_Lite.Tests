@MainSCJ

Feature:

    Scenario Outline: 13_WaybillsCourierFullRefund
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
        # перевести  накладную в статус "Получен складом"
        And I moving waybills status forward "Получен складом"
        # перевести  накладную в статус "Взят в подбор"
        And I moving waybills status forward "Взят в подбор"
        # перевести  накладную в статус "Подбор завершен"
        And I moving waybills status forward "Подбор завершен"
        # перевести  накладную в статус "Торг-12 получен"
        And I moving waybills status forward "Торг-12 получен"
        # перевести  накладную в статус "Заказ отгружен"
        And I moving waybills status forward "Заказ отгружен"
         # перевести  накладную в статус "Заказ доставлен"
        And I moving waybills status forward "Заказ доставлен"
         # перевести  накладную в статус "Полный возврат"
        And I moving waybills status forward "Полный возврат"
        # Переходим в накладные
        When I click on this element "Накладные"
        And I wait on elements "Orders"
        # Проверка что статус накладной в "Полный возврат"
        And I add "random number" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then I see element "random number" in status "Полный возврат"
        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        Examples:
            | login coordinator         | Ship To Code | countMonoPallet | countMixPallet | shipping date | delivery date | countBox | weight | volume |
            | SCJ Transport Coordinator | Котомилк   | 4               | 4              | 1             | 7             | 12       | 7500      | 4      |

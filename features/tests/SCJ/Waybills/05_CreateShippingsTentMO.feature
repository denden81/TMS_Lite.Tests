@MainSCJ

Feature: Check shippings tent and MO

    Scenario Outline: 05_CreateShippingsTentMO
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
        And I select "<typeTC>" to the inputfields "Тип ТС"
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
        # Заходим в накладную чтобы проверить историю
        And I click in random element "random number"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        And thes element "История в накладной" contains the text "Значение поля Тип кузова изменено на 'Тент'"
        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате

        Examples:
            | login coordinator         | Ship To Code | countMonoPallet | countMixPallet | shipping date | delivery date | countBox | weight | volume |typeTC|
            | SCJ Transport Coordinator | Котовский    | 4               | 4              | 1             | 7             | 12       | 4500  | 4      |   Тент 10т   |


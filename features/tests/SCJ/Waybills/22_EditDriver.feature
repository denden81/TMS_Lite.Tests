@MainSCJ

Feature: Create tariff and check shippings

    Scenario Outline: 22_EditDriver ч1
        #Создаем тариф
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this in div "Справочники"
        And I click on this in a "Водители"
        And I click on this element "Добавить нового водителя"
        And I add data "random driver" to the inputfields "ФИО *"
        And I add data "random driver license" to the inputfields "Водительское удостоверение *"
        And I add data "random driver pasport" to the inputfields "Серия и номер паспорта *"
        And I add data "<Phone>" to the inputfields "Телефон водителя"
        And I select "<TK>" to the inputfields "Транспортная компания *"
        And I select "<TC>" to the inputfields "Транспортные средства" some fields
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что водитель добавился.
        And  I add "random driver" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And thes element "Грид Водитель" contains the text "random driver"
         # Проверка редактирования водителя
        And I click in random element "random driver"
        And I add data "random driver 2" to the inputfields "ФИО *"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что редактирование водителя сохранено.
        And  I add "random driver 2" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And thes element "Грид Водитель" contains the text "random driver 2"
        Then  I click on this element "logout"

        Examples:
            | login coordinator           |  Phone      | TC                       |TK|
            | SCJ Transport Coordinator |  9064514574 | Рено у340хк199 (ВС 9619 50)| Симпл Деливери Груп |

    Scenario Outline: 22_EditDriver ч2
      #Создаем перевозку
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
        And I select "random driver 2" to the inputfields "Водитель"
        And I click on this in button "Сохранить"
        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        Examples:
            | login coordinator         | Ship To Code | countMonoPallet | countMixPallet | shipping date | delivery date | countBox | weight | volume |
            | SCJ Transport Coordinator | Котовский    | 4               | 4              | 1             | 7             | 12       | 7500      | 4      |

@MainRoust

Feature: Create tariff and check shippings

    Scenario Outline: 21_CreateDriver ч1
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
        And I select "<TC>" to the inputfields "Транспортные средства" some fields
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что водитель добавился.
        And  I add "random driver" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And thes element "Грид Водитель" contains the text "random driver"
        Then  I click on this element "logout"

        Examples:
            | login coordinator           |  Phone      | TC                       |
            | Roust Transport Coordinator |  9064514574 | МАН С656АВ750 (ВР682377) |

    Scenario Outline: 21_CreateDriver ч2
      #Создаем перевозку
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this element "Создать накладную"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        And I add "random number" to the inputfields "Номер заказа"
        And I add "random number order" to the inputfields "Номер заказа клиента"
         # Добавление склад отгрузки и доставки
        And I add shipping warehouses "<shipping warehouse>" and delivery warehouses "<delivery warehouse>"
        And I add "Дата отгрузки *" shipping date "<shipping date>" and "Дата доставки *" delivery date "<delivery date>"
        Then I add "<countPallet>" to the inputfields "Кол-во паллет Предварительное"
        # Добавление артикулов
        And I click on this in button "Добавить"
        And I add "<materialRef>" to the inputfields "Материал артикула"
        And I expect this element "Loader" is not visible
        When I click on this element "Добавить материал"
        And I wait on elements "Иконка карандаша"
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
        And I select "random driver" to the inputfields "Водитель"
        And I click on this in button "Сохранить"
        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        Examples:
            | login coordinator           | shipping warehouse | delivery warehouse | countPallet | shipping date | delivery date | materialRef |
            | Roust Transport Coordinator | РУСТ ИНК Москва          | Котовский          | 33          | 1             | 7             |303308 |

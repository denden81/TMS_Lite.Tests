@MainBacardi

Feature:

    Scenario Outline: 26_WarehouseDelivery ч1
        # Создаем склад доставки
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this in div "Справочники"
        And I click on this in a "Склады доставки"
        And I click on this element "Добавить новый склад"
        And I add data "random warehouse" to the inputfields "Наименование склада *"
        And I add data "random user" to the inputfields "SAP код склада"
        And I add data "<Client>" to the inputfields "Клиент *"
        And I add data "random user" to the inputfields "SoldTo number"
        And I select "<City>" to the inputfields "Город"
        And I add data "<Address>" to the inputfields "Адрес"
        And I select "Доставка" to the inputfields "Способ доставки *"
        Then I click on this in button "Сохранить"
        # Проверка что склад доставки добавился.
        And  I add "random warehouse" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And thes element "Грид Справочников" contains the text "random warehouse"
        # Редактирование записи
        When I click on this in div "random warehouse"
        And I add data "random warehouse 2" to the inputfields "Наименование склада *"
        And I click on this in button "Сохранить"
        # Проверка что склад доставки добавился.
        And  I add "random warehouse 2" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And thes element "Грид Справочников" contains the text "random warehouse 2"
        Then  I click on this element "logout"

        Examples:
            | login coordinator           | City   | Address                      | Client                |
            | Bac Transport Coordinator | Москва | Москва, ул Октябрьская, д 33 | Котовский Кот Котович |

    Scenario Outline: 26_WarehouseDelivery ч2
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this element "Создать накладную"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        And I add "random number" to the inputfields "Номер заказа"
        And I add "random number order" to the inputfields "Номер заказа клиента"
         # Добавление склад отгрузки и доставки
        And I add shipping warehouses "<shipping warehouse>" and delivery warehouses "random warehouse 2"
        And I add "Дата отгрузки *" shipping date "<shipping date>" and "Дата доставки *" delivery date "<delivery date>"
        Then I add "<countPallet>" to the inputfields "Кол-во паллет Предварительное"
        # Добавление артикулов
        And I click on this in button "Добавить"
        And I add "<materialTent>" to the inputfields "Материал артикула"
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
        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        Examples:
            | login coordinator           | shipping warehouse | countPallet | shipping date | delivery date | materialTent |
            | Bac Transport Coordinator | ДЦ Москва          | 4           | 1             | 7             | 105543       |

@MainSCJ

Feature:

    Scenario Outline: 26_WarehouseDelivery ч1
        # Создаем склад доставки
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this in div "Справочники"
        And I click on this in a "Склады доставки"
        And I click on this element "Добавить новый склад"
        And I add data "random warehouse" to the inputfields "Наименование склада *"
        And I add data "random user" to the inputfields "Sold To Code"
        And I add data "<Client>" to the inputfields "Клиент *"
        And I add data "random shipto" to the inputfields "Ship To Code *"
        And I add data "<Region>" to the inputfields "Регион"
        And I select "<City>" to the inputfields "Город"
        And I add data "<Address>" to the inputfields "Адрес *"
        And I select "Доставка" to the inputfields "Способ доставки *"
        And I click on this in checkbox "Пн"
        And I click on this in checkbox "Вт"
        And I click on this in checkbox "Ср"
        And I click on this in checkbox "Чт"
        And I click on this in checkbox "Пт"
        And I click on this in checkbox "Сб"
        And I click on this in checkbox "Вс"
        And I click on this in button "Сохранить"
        # Проверка что склад доставки добавился.
        And  I add "random warehouse" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And thes element "Грид Справочников" contains the text "random warehouse"
         # Редактирование записи
        When I click on this in div "random warehouse"
        And I add data "random warehouse 2" to the inputfields "Наименование склада *"
        And I add data "random shipto 2" to the inputfields "Ship To Code *"
        And I click on this in button "Сохранить"
        # Проверка что склад доставки добавился.
        And  I add "random warehouse 2" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And thes element "Грид Справочников" contains the text "random warehouse 2"
        # Пометить запись как валидную
        When I click on this element "Все чекбоксы"
        And I click on this in button "Запись валидна"
        And I check "Запись валидна" and answer "Да"
        And I expect this element "Loader" is not visible
        Then  I click on this element "logout"

        Examples:
            | login coordinator         | City   | Address                      | Client                |Region      |
            | SCJ Transport Coordinator | Москва | Москва, ул Октябрьская, д 33 | Котовский Кот Котович |  Москва г  |

    Scenario Outline: 26_WarehouseDelivery ч2
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this element "Создать накладную"
        And  I add "random number" to the inputfields "Номер заказа"
        And  I add "random number order" to the inputfields "Номер заказа клиента"
        And  I add "random number SCJ in Sap" to the inputfields "Номер заказа SCJ in Sap"
         # Добавление склада отгрузки и доставки
        And I select "random shipto 2" to the inputfields "Ship To Code *"
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
        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        Examples:
            | login coordinator         | countMonoPallet | countMixPallet | shipping date | delivery date | countBox | weight | volume |
            | SCJ Transport Coordinator | 4               | 4              | 1             | 7             | 12       | 7500   | 4      |

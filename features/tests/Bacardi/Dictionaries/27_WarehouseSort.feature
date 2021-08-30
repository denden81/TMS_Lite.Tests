@MainBacardi

Feature:

    Scenario Outline: 27_WarehouseSort
        # Создаем склад доставки
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this in div "Справочники"
        And I click on this in a "Склады доставки"
        And I click on this element "Добавить новый склад"
        And I add data "random warehouse" to the inputfields "Наименование склада *"
        And I add data "random code warehouse" to the inputfields "SAP код склада"
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
         # Очищаем поле поиска
        And I reload page
        And I expect this element "Loader" is not visible
         # Проверка фильтра поля
        # Выставляем фильтр
        And I set filter "random code warehouse" in field "SAP код склада"
        And I set filter "random warehouse" in field "Наименование склада"
        And I set filter "<Client>" in field "Клиент"
        And I set filter checkbox "<City>" in field "Город"
        And I set filter "<Address>" in field "Адрес"
        And I expect this element "Loader" is not visible
        And thes element "Грид Справочников" contains the text "random warehouse"
        # Сортируем и проверяем результат SAP код склада
        And I click sort on this up "SAP код склада"
        And thes element "Грид Справочников" contains the text "random warehouse"
        And I click sort on this down "SAP код склада"
        And thes element "Грид Справочников" contains the text "random warehouse"
        # Сортируем и проверяем результат наименование склада
        And I click sort on this up "Наименование склада"
        And thes element "Грид Справочников" contains the text "random warehouse"
        And I click sort on this down "Наименование склада"
        And thes element "Грид Справочников" contains the text "random warehouse"
        # Сортируем и проверяем результат Клиент
        And I click sort on this up "Клиент"
        And thes element "Грид Справочников" contains the text "random warehouse"
        And I click sort on this down "Клиент"
        And thes element "Грид Справочников" contains the text "random warehouse"
        # Сортируем и проверяем результат SoldTo number
        And I click sort on this up "SoldTo number"
        And thes element "Грид Справочников" contains the text "random warehouse"
        And I click sort on this down "SoldTo number"
        And thes element "Грид Справочников" contains the text "random warehouse"
        # Сортируем и проверяем результат Город
        And I click sort on this up "Город"
        And thes element "Грид Справочников" contains the text "random warehouse"
        And I click sort on this down "Город"
        And thes element "Грид Справочников" contains the text "random warehouse"
        # Сортируем и проверяем результат Адрес
        And I click sort on this up "Адрес"
        And thes element "Грид Справочников" contains the text "random warehouse"
        And I click sort on this down "Адрес"
        And thes element "Грид Справочников" contains the text "random warehouse"

        Examples:
            | login coordinator           | City   | Address                      | Client                |
            | Bac Transport Coordinator | Москва | Москва, ул Октябрьская, д 33 | Котовский Кот Котович |

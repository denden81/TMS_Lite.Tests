@MainBacardi

Feature:

    Scenario Outline: 38_ShippingWarehouses
        # Создаем Склады отгрузки
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this in div "Справочники"
        And I click on this in a "Склады отгрузки"
        And I click on this element "Добавить новый склад"
        And I add data "random" to the inputfields "Код *"
        And I add data "random warehouse" to the inputfields "Наименование склада *"
        And I add data "<Region>" to the inputfields "Регион"
        And I select "<City>" to the inputfields "Город"
        And I add data "<Address>" to the inputfields "Адрес"
        And I add data "random user" to the inputfields "Грузоотправитель *"
        Then I click on this in button "Сохранить"
        # Проверка что склад доставки добавился.
        And  I add "random warehouse" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        #Выставляем фильтры
        And I set filter "random" in field "Код"
        And I set filter "random warehouse" in field "Наименование склада"
        And I set filter "<Region>" in field "Регион"
        And I set filter checkbox "<City>" in field "Город"
        And I set filter "<Address>" in field "Адрес"
        And I set filter "random user" in field "Грузоотправитель"
        And I set filter checkbox "Да" in field "Активен"
        And thes element "Грид Справочников" contains the text "random warehouse"
        # Редактирование записи
        When I click on this in div "random warehouse"
        And I add data "random warehouse 2" to the inputfields "Наименование склада *"
        And I click on this in button "Сохранить"
        # Проверка что Склады отгрузки добавился.
        And  I add "random warehouse 2" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And I set filter "random warehouse 2" in field "Наименование склада"
        And thes element "Грид Справочников" contains the text "random warehouse 2"
        #Делаем запись не активным
        And I click on this in div "random warehouse 2"
        And I click on this in checkbox "Нет"
        And I click on this in button "Сохранить"
        Then I expect this element "Loader" is not visible

        Examples:
            | login coordinator           | City   | Address                      |Region|
            | Bac Transport Coordinator | Москва | Москва, ул Октябрьская, д 33 |Москва г|

@MainSCJ

Feature:

    Scenario Outline: 36_Roles
        # Создаем Роли
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this in div "Справочники"
        And I click on this in a "Роли"
        And I click on this element "Добавить новый элемент"
        And I add data "random user" to the inputfields "Наименование *"
        And I select "<entity>" to the inputfields "Юр. лицо"
        And I click on this in checkbox "Просмотр накладных"
        And I click on this in checkbox "Просмотр перевозок"
        And I click on this in checkbox "Создание перевозок"
        Then I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что Роли добавился.
        And  I add "random user" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        #Выставляем фильтры
        And I set filter "random user" in field "Наименование"
        And thes element "Грид Справочников" contains the text "Просмотр перевозок"
        # Редактирование записи
        When I click on this in div "random user"
        And I click on this in checkbox "Настройка полей"
        And I click on this in checkbox "Редактирование типов ТС"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что Роли добавился.
        And thes element "Грид Справочников" contains the text "Редактирование типов ТС"
        Then thes element "Грид Справочников" contains the text "Настройка полей"

        Examples:
            | login coordinator         |entity|
            | SCJ Transport Coordinator |SC Johnson|

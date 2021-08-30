@MainSCJ

Feature:

    Scenario Outline: 44_TransportCompanies
        # Создаем Транспортные компании
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this in div "Справочники"
        And I click on this in a "Транспортные компании"
        And I click on this element "Добавить новый элемент"
        And I add data "random user" to the inputfields "Название *"
        And I add data "random" to the inputfields "Номер доверенности"
        And I select data "3" to the inputfields "Дата доверенности"
        And I add data "random 2" to the inputfields "Email *"
        And I add data "random user" to the inputfields "Экспедитор *"
        Then I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что Транспортные компании добавился.
        And  I add "random user" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        #Выставляем фильтры
        And I set filter "random user" in field "Название"
        And I set filter "random" in field "Номер доверенности"
        And I set filter data "3" in field "Дата доверенности"
        And I set filter "random 2" in field "Email"
        And I set filter "random user" in field "Экспедитор"
        And thes element "Грид Справочников" contains the text "random user"
        # Редактирование записи
        When I click on this in div "random user"
        And I add data "random" to the inputfields "Название *"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        And  I add "random" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        #Выставляем фильтры
        And I set filter "random" in field "Название"
        # Проверка что Типы ТС добавился.
        Then thes element "Грид Справочников" contains the text "random"
        #Делаем запись не активным
        And I click on this in div "random"
        And I select label "Нет" to the inputfields "Активен"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible

        Examples:
            | login coordinator           |
            | SCJ Transport Coordinator |

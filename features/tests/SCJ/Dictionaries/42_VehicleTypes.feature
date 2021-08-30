@MainSCJ

Feature:

    Scenario Outline: 42_VehicleTypes
        # Создаем Типы ТС
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this in div "Справочники"
        And I click on this in a "Типы ТС"
        And I click on this element "Добавить новый элемент"
        And I add data "random user" to the inputfields "Наименование *"
        And I select "20 т" to the inputfields "Тоннаж"
        And I select "Тент" to the inputfields "Тип кузова"
        And I add data "random" to the inputfields "Всего паллето мест"
        Then I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что Типы ТС добавился.
        And  I add "random user" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        #Выставляем фильтры
        And I set filter "random user" in field "Наименование"
        And I set filter checkbox "20 т" in field "Тоннаж"
        And I set filter checkbox "Тент" in field "Тип кузова"
        And I set filter "random" in field "Всего паллето мест"
        And thes element "Грид Справочников" contains the text "random user"
        # Редактирование записи
        When I click on this in div "random user"
        And I add data "random" to the inputfields "Наименование *"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        And  I add "random" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        #Выставляем фильтры
        And I set filter "random" in field "Наименование"
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

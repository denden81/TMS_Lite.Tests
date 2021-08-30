@MainSCJ

Feature:

    Scenario Outline: 34_Vehicles
        # Создаем Транспортные средства
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this in div "Справочники"
        And I click on this in a "Транспортные средства"
        And I click on this element "Добавить новый элемент"
        And I add data "random number tc" to the inputfields "Номер ТС *"
        And I add data "random name tc" to the inputfields "Марка ТС *"
        And I add data "random number tc" to the inputfields "Номер прицепа"
        And I select "<type tc>" to the inputfields "Тип ТС"
        Then I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что Транспортные средства добавился.
        And  I add "random number tc" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        #Выставляем фильтры
        And I set filter "random number tc" in field "Номер ТС"
        And I set filter "random name tc" in field "Марка ТС"
        And I set filter "random number tc" in field "Номер прицепа"
        And I set filter checkbox "<type tc>" in field "Тип ТС"
        And thes element "Грид Справочников" contains the text "20"
        # Редактирование записи
        When I click on this in div "random number tc"
        And I add data "random number tc 2" to the inputfields "Номер ТС *"
        And I add data "random name tc 2" to the inputfields "Марка ТС *"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что Транспортные средства добавился.
        And I set filter "random number tc 2" in field "Номер ТС"
        And I set filter "random name tc 2" in field "Марка ТС"
        And I expect this element "Loader" is not visible
        Then thes element "Грид Справочников" contains the text "random number tc 2"
        #Делаем запись не активным
        And I click on this in div "random number tc"
        And I click on this in checkbox "Нет"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible

        Examples:
            | login coordinator           |type tc|
            | SCJ Transport Coordinator |Тент 20т|

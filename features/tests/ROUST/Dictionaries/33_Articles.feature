@MainRoust

Feature:

    Scenario Outline: 33_Articles
        # Создаем Артикул
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this in div "Справочники"
        And I click on this in a "Материалы"
        And I click on this element "Добавить новый элемент"
        And I add data "random" to the inputfields "Описание *"
        And I add data "random article" to the inputfields "Материал *"
        And I add data "20" to the inputfields "Количество на паллете"
        And I select "<type>" to the inputfields "Тип кузова *"
        Then I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что Артикул добавился.
        And  I add "random article" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        #Выставляем фильтры
        And I set filter "random" in field "Описание"
        And I set filter "random article" in field "Материал"
        And I set filter "20" in field "Количество на паллете"
        And I set filter checkbox "<type>" in field "Тип кузова"
        And thes element "Грид Справочников" contains the text "random article"
        # Редактирование записи
        When I click on this in div "random article"
        And I add data "30" to the inputfields "Количество на паллете"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что Артикул добавился.
        And I set filter "30" in field "Количество на паллете"
        And I expect this element "Loader" is not visible
        Then thes element "Грид Справочников" contains the text "random article"

        Examples:
            | login coordinator           |type|
            | Roust Transport Coordinator |Тент|

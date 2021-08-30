@MainRoust

Feature:

    Scenario Outline: 30_Leadtime
        # Создаем Leadtime
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this in div "Справочники"
        And I click on this in a "Leadtime"
        And I click on this element "Добавить новый элемент"
        And I select "<shipping warehouse>" to the inputfields "Склад отгрузки *"
        And I select "<deliver warehouse>" to the inputfields "Склад доставки"
        And I select "<deliver city>" to the inputfields "Город доставки *"
        And I select "<Client>" to the inputfields "Клиент"
        And I add data "random" to the inputfields "Leadtime, часов *"
        Then I click on this in button "Сохранить"
        # Проверка что Leadtime добавился.
        And  I add "random" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And thes element "Грид Справочников" contains the text "<deliver city>"
        # Редактирование записи
        When I click on this in div "<deliver city>"
        And I add data "random 2" to the inputfields "Leadtime, часов *"
        And I click on this in button "Сохранить"
        # Проверка что Leadtime добавился.
        And  I add "random 2" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then thes element "Грид Справочников" contains the text "random 2"

        Examples:
            | login coordinator           | Client      | shipping warehouse | deliver city        | deliver warehouse |
            | Roust Transport Coordinator | Газпромбанк | РУСТ ИНК Москва    | Газопроводское с.п. | Газпромбанк       |

@MainBacardi
@Pending #https://artlogics.myjetbrains.com/youtrack/issue/ROUST-366

Feature:

    Scenario Outline: 31_ShippingSchedules
        # Создаем График отгрузок
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this in div "Справочники"
        And I click on this in a "График отгрузок"
        And I click on this element "Добавить новый элемент"
        And I select "<shipping city>" to the inputfields "Город отгрузки *"
        And I select "<deliver city>" to the inputfields "Город доставки *"
        And I select "<TK>" to the inputfields "Транспортная компания *"
        And I select "Пн" to the inputfields "День отгрузки *" some fields
        And I select "Вт" to the inputfields "День доставки *" some fields
        Then I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что График отгрузок добавился.
        And  I add "<TK>" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        #Выставляем фильтры
        And I set filter checkbox "<shipping city>" in field "Город отгрузки"
        And I set filter checkbox "<deliver city>" in field "Город доставки"
        And I set filter checkbox "Пн" in field "День отгрузки"
        And I set filter checkbox "Вт" in field "День доставки"
        And I set filter checkbox "Да" in field "Активен"
        And thes element "Грид Справочников" contains the text "<deliver city>"
        # Редактирование записи
        When I click on this in div "<deliver city>"
        And I select "Ср" to the inputfields "День доставки *" some fields
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что График отгрузок добавился.
        And I set filter checkbox "Ср" in field "День доставки"
        And I expect this element "Loader" is not visible
        Then thes element "Грид Справочников" contains the text "<deliver city>"
        #Делаем запись не активным
        And I click on this in div "<deliver city>"
        And I click on this in checkbox "Нет"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible

        Examples:
            | login coordinator           | TK   | shipping city | deliver city        |
            | Bac Transport Coordinator | РУСТ | Москва        | Газопроводское с.п. |

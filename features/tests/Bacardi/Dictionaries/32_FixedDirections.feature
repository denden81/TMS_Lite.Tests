@MainBacardi
@Pending #https://artlogics.myjetbrains.com/youtrack/issue/ROUST-366

Feature:

    Scenario Outline: 32_FixedDirections
        # Создаем Закрепленные направление
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this in div "Справочники"
        And I click on this in a "Закрепленные направления"
        And I click on this element "Добавить новый элемент"
        And I select "<TK>" to the inputfields "Транспортная компания *"
        And I select "<shipping warehouse>" to the inputfields "Склад отгрузки"
        And I select "<delivery warehouse>" to the inputfields "Склад доставки"
        And I select "<shipping city>" to the inputfields "Город отгрузки"
        And I select "<delivery city>" to the inputfields "Город доставки"
        And I select "<shipping region>" to the inputfields "Регион отгрузки"
        And I select "<delivery region>" to the inputfields "Регион доставки"
        And I select "<type tc>" to the inputfields "Тип ТС" some fields
        And I add data "<quote>" to the inputfields "Квота (%) *"
        Then I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что Закрепленные направление добавился.
        And  I add "<TK>" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        #Выставляем фильтры
        And I set filter checkbox "<shipping warehouse>" in field "Склад отгрузки"
        And I set filter checkbox "<delivery warehouse>" in field "Склад доставки"
        And I set filter checkbox "<shipping city>" in field "Город отгрузки"
        And I set filter checkbox "<delivery city>" in field "Город доставки"
        And I set filter checkbox "<shipping region>" in field "Регион отгрузки"
        And I set filter checkbox "<delivery region>" in field "Регион доставки"
        And I set filter "<quote>" in field "Квота (%)"
        And I set filter checkbox "Да" in field "Активен"
        And thes element "Грид Справочников" contains the text "<delivery warehouse>"
        # Редактирование записи
        When I click on this in div "<delivery warehouse>"
        And I add data "<quote2>" to the inputfields "Квота (%) *"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что Закрепленные направление добавился.
        And I set filter "<quote2>" in field "Квота (%)"
        And I expect this element "Loader" is not visible
        Then thes element "Грид Справочников" contains the text "<delivery warehouse>"
        #Делаем запись не активным
        And I click on this in div "<delivery warehouse>"
        And I click on this in checkbox "Нет"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible

        Examples:
            | login coordinator           | TK   | shipping city | delivery city | shipping warehouse | delivery warehouse | shipping region | delivery region  | type tc  | quote | quote2 |
            | Bac Transport Coordinator | РУСТ | Московское МО | Астрахань     | РУСТ ИНК Москва    | Алко-Трейд Ижевск  | Московская обл| Астраханская обл | Тент 20т | 50    | 90     |

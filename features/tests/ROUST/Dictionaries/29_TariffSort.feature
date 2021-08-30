@MainRoust

Feature:

    Scenario Outline: 29_TariffSort ч1
        #Создаем тариф
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        And I click on this in a "Тарифы"
        And I wait on elements "Грид Тарифы"
        And I click on this element "Создать тариф"
        And thes element "Окно при создании нового тарифа" contains the text "Транспортная компания *"
        When I select "<transportCompany>" to the inputfields "Транспортная компания *"
        And I select "<shipping warehouse>" to the inputfields "Склад отгрузки"
        And I select "<shipping warehouse city>" to the inputfields "Город отгрузки"
        And I select "<delivery warehouses>" to the inputfields "Склад доставки"
        And I select "<delivery warehouse city>" to the inputfields "Город доставки"
        And I select "<vehicle type>" to the inputfields "Тип ТС"
        And I select "<tariffications type>" to the inputfields "Способ тарификации"
        And I add "Дата начала действия тарифов *" shipping date "<effective date>" and "Дата окончания действия тарифов *" delivery date "<expiration date>"
        And I add data "<FTL Rate>" to the inputfields "Ставка FTL"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        Then I check "old tariff" and answer "Да"
        # Проверка фильтра поля
        # Выставляем фильтр
        And I set filter checkbox "<transportCompany>" in field "Транспортная компания"
        And I set filter checkbox "<shipping warehouse>" in field "Склад отгрузки"
        And I set filter checkbox "<delivery warehouse city>" in field "Город доставки"
        #And I set filter checkbox "<vehicle type>" in field "Тип ТС"
        #And I set filter checkbox "<tariffications type>" in field "Способ тарификации"
       #And I set filter data "0" in field "Дата начала действия тарифов"
        And thes element "Грид Справочников" contains the text "<transportCompany>"
        # Сортируем и проверяем результат Транспортная компания
        And I click sort on this up "Транспортная компания"
        And thes element "Грид Справочников" contains the text "<transportCompany>"
        And I click sort on this down "Транспортная компания"
        And thes element "Грид Справочников" contains the text "<transportCompany>"
        # Сортируем и проверяем результат Склад отгрузки
        And I click sort on this up "Склад отгрузки"
        And thes element "Грид Справочников" contains the text "<shipping warehouse>"
        And I click sort on this down "Склад отгрузки"
        And thes element "Грид Справочников" contains the text "<shipping warehouse>"
        # Сортируем и проверяем результат Город доставки
        And I click sort on this up "Город доставки"
        And thes element "Грид Справочников" contains the text "<delivery warehouse city>"
        And I click sort on this down "Город доставки"
        And thes element "Грид Справочников" contains the text "<delivery warehouse city>"
        # Сортируем и проверяем результат Тип ТС
        And I click sort on this up "Тип ТС"
        And thes element "Грид Справочников" contains the text "<vehicle type>"
        And I click sort on this down "Тип ТС"
        And thes element "Грид Справочников" contains the text "<vehicle type>"
        # Сортируем и проверяем результат Способ тарификации
        And I click sort on this up "Способ тарификации"
        And thes element "Грид Справочников" contains the text "<tariffications type>"
        And I click sort on this down "Способ тарификации"
        And thes element "Грид Справочников" contains the text "<tariffications type>"

        Examples:
            | login coordinator           | shipping warehouse | shipping warehouse city | delivery warehouses | delivery warehouse city | transportCompany | vehicle type | tariffications type | FTL Rate | effective date | expiration date |
            | Roust Transport Coordinator | РУСТ ИНК Москва    | Москва                  | Риф ТК Саратов      | Саратов                 | ООО «Мок»        | Тент 20т     | FTL                 | 58700    | 0              | 30              |

    Scenario Outline: 29_TariffSort ч2
        # Удаляем тариф
        And I click on this in a "Тарифы"
        And I wait on elements "Грид Тарифы"
        And  I add "<transportCompany>" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And I click on this element "Первый элемент в списке"
        And thes element "Окно при создании нового тарифа" contains the text "Транспортная компания *"
        And I click on this element "Удалить тариф"
        And I check "удалить эту запись" and answer "Да"
        And I expect this element "Loader" is not visible
        Examples:
            | transportCompany |
            | ООО «Мок»        |

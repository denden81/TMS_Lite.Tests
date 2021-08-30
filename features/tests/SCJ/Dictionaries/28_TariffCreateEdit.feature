@MainSCJ

Feature:

    Scenario Outline: 28_TariffCreateEdit ч1
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
        # Редактируем тариф
        When I click on this element "Первый элемент в списке"
        And thes element "Окно при создании нового тарифа" contains the text "Транспортная компания *"
        And I select "<vehicle type 2>" to the inputfields "Тип ТС"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        And I check "old tariff" and answer "Да"
        # Выставляем фильтр
        And I set filter checkbox "<vehicle type 2>" in field "Тип ТС"
        Then thes element "Грид Справочников" contains the text "<transportCompany>"

        Examples:
            | login coordinator         | shipping warehouse | shipping warehouse city | delivery warehouses | delivery warehouse city | transportCompany | vehicle type | tariffications type | FTL Rate | effective date | expiration date | vehicle type 2 |
            | SCJ Transport Coordinator | Томилино           | Москва                  | АО Тандер Пенза     | Пенза                   | Транслогистик    | Тент 20т     | FTL                 | 58700    | 0              | 30              | Тент 1,5т      |


    Scenario Outline: 28_TariffCreateEdit ч2
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
            | transportCompany    |
            | Транслогистик |

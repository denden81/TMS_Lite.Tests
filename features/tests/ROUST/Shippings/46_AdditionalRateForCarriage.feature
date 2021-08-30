@MainRoust

Feature: Create tariff and check shippings

    Scenario Outline:  46_AdditionalRateForCarriage ч1
        #Создаем тариф
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        And I click on this in a "Тарифы"
        And I wait on elements "Грид Тарифы"
        And I click on this element "Создать тариф"
        And thes element "Окно при создании нового тарифа" contains the text "Транспортная компания *"
        When I select "<transportCompany>" to the inputfields "Транспортная компания *"
        And I select "<shipping warehouse>" to the inputfields "Склад отгрузки"
        And I select "<delivery warehouse>" to the inputfields "Склад доставки"
        And I select "<vehicle type>" to the inputfields "Тип ТС"
        And I select "<tariffications type>" to the inputfields "Способ тарификации"
        And I add "Дата начала действия тарифов *" shipping date "<effective date>" and "Дата окончания действия тарифов *" delivery date "<expiration date>"
        And I add data "<FTL Rate>" to the inputfields "Ставка FTL"
        And I add data "<Additional Rate>" to the inputfields "Ставка за доп. точку"
        And I add data "<Center Rate>" to the inputfields "Ставка за въезд в центр"
        And I add data "<Forwarder Rate>" to the inputfields "Доставка на склад экспедитора"
        And I add data "<Pooling Rate>" to the inputfields "Ставка за паллету Pooling"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        And I check "old tariff" and answer "Да"
        Then  I click on this element "logout"

        Examples:
            | login coordinator           | shipping warehouse | delivery warehouse | transportCompany | vehicle type | tariffications type | FTL Rate | effective date | expiration date | Additional Rate | Center Rate | Forwarder Rate | Pooling Rate |
            | Roust Transport Coordinator | РУСТ ИНК Москва    | Котовский          | Автофлагман        | Тент 20т     | FTL                 | 58700    | 0              | 30              | 4800            | 3500        | 5100           | 2300         |

    Scenario Outline:  46_AdditionalRateForCarriage ч2
        #Создаем 1 накладную
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this element "Создать накладную"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        And I add "random number" to the inputfields "Номер заказа"
        And I add "random number order" to the inputfields "Номер заказа клиента"
         # Добавление склад отгрузки и доставки
        And I add shipping warehouses "<shipping warehouse>" and delivery warehouses "<delivery warehouse>"
        And I add "Дата отгрузки *" shipping date "<shipping date>" and "Дата доставки *" delivery date "<delivery date>"
        Then I add "<countPallet>" to the inputfields "Кол-во паллет Предварительное"
        And I add data "<Weight>" to the inputfields "Плановый"
        # Добавление артикулов
        And I click on this in button "Добавить"
        And I add "<materialTent>" to the inputfields "Материал артикула"
        And I expect this element "Loader" is not visible
        When I click on this element "Добавить материал"
        And I wait on elements "Иконка карандаша"
        And I click on this button "Кнопка Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что заказ создался в статусе Создан.
        And I add "random number" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then I see element "random number" in status "Создан"
        # Создаем 2ю накладную
        When I click on this element "Создать накладную"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        And I add "random number 2" to the inputfields "Номер заказа"
        And I add "random number order 2" to the inputfields "Номер заказа клиента"
         # Добавление склад отгрузки и доставки
        And I add shipping warehouses "<shipping warehouse>" and delivery warehouses "<delivery warehouse2>"
        And I add "Дата отгрузки *" shipping date "<shipping date>" and "Дата доставки *" delivery date "<delivery date2>"
        Then I add "<countPallet2>" to the inputfields "Кол-во паллет Предварительное"
        And I add data "<Weight2>" to the inputfields "Плановый"
        # Добавление артикулов
        And I click on this in button "Добавить"
        And I add "<materialTent>" to the inputfields "Материал артикула"
        And I expect this element "Loader" is not visible
        When I click on this element "Добавить материал"
        And I wait on elements "Иконка карандаша"
        And I click on this button "Кнопка Сохранить"
        And I expect this element "Loader" is not visible
        # Проверка что заказ создался в статусе Создан.
        And I add "random number 2" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then I see element "random number 2" in status "Создан"
        # Выставляем галку и переводим в статус "В перевозке" через МО
        And I add "random number" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        When I click on this element "Все чекбоксы"
        And I wait on elements "Панель массовых операций"
        Then I click on this element "Доп опции МО"
        And I click on this in span "Объединить в перевозку"
        And I check "Объединить в перевозку для 2" and answer "Да"
        And I expect this element "Loader" is not visible
        # Проверка что статус накладной в "В перевозке"
        And I add "random number" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And I see element "random number" in status "В перевозке"
        # Заходим в накладную
        And I click in random element "random number"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        # Заходим в перевозку
        And I click on this element "Номер перевозки"
        And thes element "Окно при создании новой перевозки" contains the text "Водитель"
        # Подбираем перевозчика
        #And I click on this in button "Подбор перевозчика"
        #And I expect this element "Loader" is not visible
        #Проверяем ставку
        And thes element "История в перевозке" contains the text "Значение поля Общая стоимость перевозки, без НДС изменено на '63500'"
        And thes element "История в перевозке" contains the text "Значение поля Общая стоимость перевозки, с НДС изменено на '76200' "
        And thes element "История в перевозке" contains the text "Значение поля Базовая стоимость перевозки, без НДС изменено на '58700'"
        And thes element "История в перевозке" contains the text "Значение поля Стоимость за доп.точку, без НДС изменено на '4800'"
        #Удаляем 2ю накладную из перевозки
        When I click on this element "Накладные"
        And I add "random number 2" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        # Заходим в накладную
        And I click in random element "random number 2"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        # перевести  накладную в статус "Удалена"
        Then I click on this element "Опции смены статуса в накладной"
        And I click on this in span "Убрать из перевозки"
        And I check "Убрать из перевозки" and answer "Да"
        # Проверяем историю
        And thes element "История в накладной" contains the text "Значение поля Базовая стоимость, без НДС изменено на '0'"
        # Проверяем историю 1 накладной
        When I click on this element "Накладные"
        And I add "random number" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        # Заходим в накладную
        And I click in random element "random number"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        # Заходим в перевозку
        And I click on this element "Номер перевозки"
        And thes element "Окно при создании новой перевозки" contains the text "Водитель"
        #Проверяем историю
        And thes element "История в перевозке" contains the text "Значение поля Общая стоимость перевозки, без НДС изменено на '58700'"
        Then thes element "История в перевозке" contains the text "Значение поля Общая стоимость перевозки, с НДС изменено на '70440'"
        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        Examples:
            | login coordinator           | shipping warehouse | delivery warehouse | delivery warehouse2 | countPallet | countPallet2 | shipping date | delivery date | delivery date2 | materialTent | transportCompany | FTL Rate | Summ Cost | Summ Cost Vat | Weight | Weight2 |
            | Roust Transport Coordinator | РУСТ ИНК Москва    | Котовский          | Котишкин            | 20          | 1            | 1             | 7             | 2              | 105543       | ООО «Кот»        | 58700    | 63500     | 76200         | 18000  | 1000    |

    Scenario Outline:  46_AdditionalRateForCarriage ч3
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
            | Автофлагман        |

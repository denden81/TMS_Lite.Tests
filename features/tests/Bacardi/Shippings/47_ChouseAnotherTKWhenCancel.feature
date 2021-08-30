@MainBacardi

Feature: Create tariff and check shippings

    Scenario Outline:  47_ChouseAnotherTKWhenCancel ч1
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
        #Добавляем второй тариф
        And I wait on elements "Грид Тарифы"
        And I click on this element "Создать тариф"
        And thes element "Окно при создании нового тарифа" contains the text "Транспортная компания *"
        When I select "<transportCompany2>" to the inputfields "Транспортная компания *"
        And I select "<shipping warehouse>" to the inputfields "Склад отгрузки"
        And I select "<delivery warehouse>" to the inputfields "Склад доставки"
        And I select "<vehicle type>" to the inputfields "Тип ТС"
        And I select "<tariffications type>" to the inputfields "Способ тарификации"
        And I add "Дата начала действия тарифов *" shipping date "<effective date>" and "Дата окончания действия тарифов *" delivery date "<expiration date>"
        And I add data "<FTL Rate2>" to the inputfields "Ставка FTL"
        And I add data "<Additional Rate>" to the inputfields "Ставка за доп. точку"
        And I add data "<Center Rate>" to the inputfields "Ставка за въезд в центр"
        And I add data "<Forwarder Rate>" to the inputfields "Доставка на склад экспедитора"
        And I add data "<Pooling Rate>" to the inputfields "Ставка за паллету Pooling"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        And I check "old tariff" and answer "Да"
        Then  I click on this element "logout"

        Examples:
            | login coordinator           | shipping warehouse | delivery warehouse | transportCompany      | transportCompany2 | vehicle type | tariffications type | FTL Rate | FTL Rate2 | effective date | expiration date | Additional Rate | Center Rate | Forwarder Rate | Pooling Rate |
            | Bac Transport Coordinator | РУСТ ИНК Москва    | Котовский          | ООО «Кот» | ООО «Мок»     | Тент 20т     | FTL                 | 58700    | 60000     | 0              | 30              | 4800            | 3500        | 5100           | 2300         |

    Scenario Outline:  47_ChouseAnotherTKWhenCancel ч2
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
        # Заходим в накладную
        And I click in random element "random number"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        # перевести  накладную в статус "В перевозке"
        And I moving waybills status forward "В перевозке"
        # Заходим в перевозку
        And I click on this element "Номер перевозки"
        And thes element "Окно при создании новой перевозки" contains the text "Водитель"
        # Подбираем перевозчика
        And I click on this in button "Подбор перевозчика"
        And I expect this element "Loader" is not visible
        #Проверяем ставку
        And thes element "История в перевозке" contains the text "Значение поля Базовая стоимость перевозки, без НДС изменено на '58700'"
        # Переводим в статус Отправлена в тк
        And I moving shippings status forward "Отправить заявку в ТК"
        # перевести  перевозку в статус "Отклонить заявку"
        And I moving shippings status forward "Отклонить заявку"
        # Проверяем историю
        And thes element "История в перевозке" contains the text "Значение поля Общая стоимость перевозки, без НДС изменено на '60000'"
        And thes element "История в перевозке" contains the text "Значение поля Транспортная компания изменено на 'ООО «Мок»'"

        Examples:
            | login coordinator           | shipping warehouse | delivery warehouse | countPallet | shipping date | delivery date | materialTent | transportCompany      | FTL Rate | Summ Cost | Summ Cost Vat | Weight | Weight2 |
            | Bac Transport Coordinator | РУСТ ИНК Москва    | Котовский          | 20          | 1             | 7             | 105543       | ООО «Кот» | 58700    | 63500     | 76200         | 18000  | 1000    |

    Scenario Outline:  47_ChouseAnotherTKWhenCancel ч3
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
        # удаляем 2рой тариф
        And  I add "<transportCompany2>" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And I click on this element "Первый элемент в списке"
        And thes element "Окно при создании нового тарифа" contains the text "Транспортная компания *"
        And I click on this element "Удалить тариф"
        And I check "удалить эту запись" and answer "Да"
        And I expect this element "Loader" is not visible

        Examples:
            | transportCompany      | transportCompany2 |
            | ООО «Кот» | ООО «Мок»    |

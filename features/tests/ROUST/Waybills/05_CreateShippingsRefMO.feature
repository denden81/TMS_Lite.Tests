@MainRoust

Feature: Check shippings tent and MO

    Scenario Outline: 05_CreateShippingsRefMO
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
        # Добавление артикулов
        And I click on this in button "Добавить"
        And I add "<materialRef>" to the inputfields "Материал артикула"
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
        # Выставляем галку и переводим в статус "В перевозке" через МО
        When I click on this element "Первый чекбокс"
        And I wait on elements "Панель массовых операций"
        And I click on this in button "Создать перевозку"
        And I check "создать перевозку" and answer "OK"
        And I expect this element "Loader" is not visible
        # Проверка что статус накладной в "В перевозке"
        Then I see element "random number" in status "В перевозке"
        # Заходим в накладную чтобы проверить историю
        And I click in random element "random number"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        And thes element "История в накладной" contains the text "Значение поля Тип кузова изменено на 'Реф'"
        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        Examples:
            | login coordinator           | shipping warehouse | delivery warehouse | countPallet | shipping date | delivery date |materialRef|
            | Roust Transport Coordinator | РУСТ ИНК Москва          | Котовский         | 4           | 1             | 7             |   303308    |

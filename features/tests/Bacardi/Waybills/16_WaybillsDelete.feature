@MainBacardi

Feature:

    Scenario Outline: 16_WaybillsDelete
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
        # Заходим в накладную чтобы передвинуть статус
        And I click in random element "random number"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        # перевести  накладную в статус "Удалена"
        When I click on this element "Опции смены статуса в накладной"
        And I click on this in span "Удалить накладную"
        And I check "Удалить накладную" and answer "Да"
         # Проверка что накладная отсутствует в гриде
        And I add "random number" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And I wait the element "random number" to not be checked
        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        Examples:
            | login coordinator           | shipping warehouse | delivery warehouse | countPallet | shipping date | delivery date | materialTent |
            | Bac Transport Coordinator | ДЦ Москва          | Котовский          | 4           | 1             | 7             | 105543       |

@MainRoust

Feature:

    Scenario Outline: 25_SortWaybillsOthersField
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this element "Создать накладную"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        And I add "random number begin" to the inputfields "Номер заказа"
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
        And I add "random number begin" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then I see element "random number begin" in status "Создан"
         # Выставляем фильтры
        And I set filter "random number begin" in field "ТТН"
        # Выставить фильтр Статус накладной
        And I set filter checkbox "Создан" in field "Статус накладной"
        # Выставить фильтр Клиент
        And I set filter checkbox "АО КТ" in field "Клиент"
        # Выставить фильтр Дата создания перевозки в системе за сегодня
        And I set filter data "0" in field "Дата создания накладной в системе"
        # Выставить фильтр Дата доставки
        And I set filter data "<delivery date>" in field "Дата доставки"

        # Сортируем Статус накладной и проверяем результат
        And I click sort on this up "Статус накладной"
        When I see element "random number begin" in status "Создан"
        And I click sort on this down "Статус накладной"
        Then I see element "random number begin" in status "Создан"

        # Сортируем Клиент и проверяем результат
        And I click sort on this up "Клиент"
        When I see element "random number begin" in status "Создан"
        And I click sort on this down "Клиент"
        Then I see element "random number begin" in status "Создан"

        # Сортируем Дату доставки и проверяем результат
        And I click sort on this up "Дата доставки"
        When I see element "random number begin" in status "Создан"
        And I click sort on this down "Дата доставки"
        Then I see element "random number begin" in status "Создан"
        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        Examples:
            | login coordinator           | shipping warehouse | delivery warehouse | countPallet | shipping date | delivery date | materialTent |waybill|
            | Roust Transport Coordinator | ДЦ Москва          | Котовский          | 4           | 1             | 7             | 105543       | ТТН   |

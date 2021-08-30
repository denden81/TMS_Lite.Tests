@MainBacardi

Feature:

    Scenario Outline: 09_DeleteWaybillsToShippingsMO
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
         # Выставляем галку и переводим в статус "В перевозке" через МО
        When I click on this element "Первый чекбокс"
        And I wait on elements "Панель массовых операций"
        And I click on this in button "Создать перевозку"
        And I check "создать перевозку" and answer "OK"
        And I expect this element "Loader" is not visible
        # Проверка что статус накладной в "В перевозке"
        Then I see element "random number" in status "В перевозке"
        # Создаем 2ю накладную
        When I click on this element "Создать накладную"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        And I add "random number 2" to the inputfields "Номер заказа"
        And I add "random number order 2" to the inputfields "Номер заказа клиента"
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
        And I add "random number 2" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then I see element "random number 2" in status "Создан"
         # Добавляем 2ю накладную в перевозку через МО к первой накладной с перевозкой.
        And I add "random number" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And I click in random element "random number"
        And I read number carriages "Roust" and add him in MO
         # Проверка что статус накладной в "В перевозке"
        And I add "random number 2" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And I see element "random number 2" in status "В перевозке"
        # Удаление накладной из перевозки
       # When I click on this element "Первый чекбокс"
        And I wait on elements "Панель массовых операций"
        And I click on this element "Доп опции МО"
        And I click on this in span "Убрать из перевозки"
        And I check "Убрать из перевозки" and answer "Да"
        And I expect this element "Loader" is not visible
        # Проверка что накладная удалена
        And I add "random number 2" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And I see element "random number 2" in status "Создан"
        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        Examples:
            | login coordinator           | shipping warehouse | delivery warehouse | countPallet | shipping date | delivery date | materialTent |
            | Bac Transport Coordinator | ДЦ Москва          | Котовский          | 4           | 1             | 7             | 105543       |

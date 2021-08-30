@MainRoust

Feature:

    Scenario Outline: 17_ShippingsForwardAndBack
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
        # Заходим в накладную чтобы передвинуть статус
        And I click in random element "random number"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        # перевести  накладную в статус "В перевозке"
        And I moving waybills status forward "В перевозке"
        # Заходим в перевозку
        And I click on this element "Номер перевозки"
        And thes element "Окно при создании новой перевозки" contains the text "Водитель"
        # Заполнение блока информация
        And I select "<transportCompany>" to the inputfields "Транспортная компания"
        And I select "<tariffication>" to the inputfields "Способ тарификации"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # перевести  перевозку в статус "В перевозке"
        And I moving shippings status forward "Отправить заявку в ТК"
        # перевести  перевозку в статус "Подтвердить заявку"
        And I moving shippings status forward "Подтвердить заявку"
        # перевести  перевозку в статус "Завершить перевозку"
        And I moving shippings status forward "Завершить перевозку"
        # перевести  перевозку в статус "Выставить счет"
        And I moving shippings status forward "Выставить счет"
        # перевести  перевозку в статус "Перевести в архив"
        And I moving shippings status forward "Перевести в архив"
        # откатить перевозку в статус "Счёт выставлен"
        And I moving shippings status revert "Откатить перевозку в статус Счет выставлен"
        # откатить перевозку в статус "Завершена"
        And I moving shippings status revert "Откатить перевозку в статус Завершена"
        # откатить перевозку в статус "Подтверждена ТК"
        And I moving shippings status revert "Откатить перевозку в статус Подтверждена ТК"
        # перевести  накладную в статус "Отменить отгрузку"
        And I moving shippings status forward "Отменить отгрузку"
        # перевести  накладную в статус "Возобновить отгрузку"
        And I moving shippings status forward "Возобновить отгрузку"
        # Переходим в накладные
        When I click on this element "Накладные"
        And I wait on elements "Orders"
        # Проверка что статус перевозки "Создана"
        And I add "random number" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then I see element "random number" in status "Создана"
        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        Examples:
            | login coordinator           | shipping warehouse | delivery warehouse | countPallet | shipping date | delivery date | materialTent |tariffication|transportCompany|Weight|
            | Roust Transport Coordinator | РУСТ ИНК Москва          | Котовский          | 4           | 1             | 7             | 105543       |FTL         |ООО «Кот»  |1350  |

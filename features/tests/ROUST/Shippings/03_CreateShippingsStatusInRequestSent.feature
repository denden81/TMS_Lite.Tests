@MainRoust

Feature: Create

    Scenario Outline: 04_CreateShippingsStatusInRequestSent

        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this element "Перевозки"
        And I wait on elements "Колонка транспортная компания"
        Then I click on this element "Создать перевозку"
        And thes element "Окно при создании новой перевозки" contains the text "Способ тарификации *"
        When I select "<tariffication>" to the inputfields "Способ тарификации *"
        And I select "<shipping warehouse>" to the inputfields "Склад отгрузки *"
        And I select "<delivery warehouse>" to the inputfields "Склад доставки *"
        And I add "Дата отгрузки *" shipping date "<shipping date>" and "Дата доставки *" delivery date "<delivery date>"
        #Добавление ОВХ
        And I add data "<countPallet>" to the inputfields "Плановое количество паллет *"
        And I add data "<weight>" to the inputfields "Вес, кг *"
        And I add data "<cost>" to the inputfields "Стоимость груза с НДС"
        And I select "<transportCompany>" to the inputfields "Транспортная компания *"
        And I click on this in button "Отправить заявку в ТК"
        And I expect this element "Loader" is not visible
        # Проверка что перевозка создалась в статусе Создан.
        And  I add "<transportCompany>" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then I see element "<transportCompany>" in status "Заявка отправлена в ТК"
        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате

        Examples:
            | login coordinator           | shipping warehouse | delivery warehouse | countPallet | shipping date | delivery date | tariffication | weight | cost  | transportCompany   |
            | Roust Transport Coordinator | РУСТ ИНК Москва          | Котовский        | 4           | 1             | 7             | LTL           | 650    | 15000 | ООО «АВ-Логистика» |

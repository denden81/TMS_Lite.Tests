@MainSCJ

Feature: Create tariff and check shippings

    Scenario Outline: 04_CreateShippingsChooseACarrierFTLTariff ч1
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
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        And I check "old tariff" and answer "Да"
        Then  I click on this element "logout"

        Examples:
            | login coordinator         | shipping warehouse | delivery warehouse | transportCompany    | vehicle type | tariffications type | FTL Rate | effective date | expiration date |
            | SCJ Transport Coordinator | Томилино           | Котовский          | Симпл Деливери Груп | Тент 20т     | FTL                 | 58700    | 0              | 30              |

    Scenario Outline: 04_CreateShippingsChooseACarrierFTLTariff ч2
      #Создаем перевозку
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this element "Перевозки"
        And I wait on elements "Способ доставки"
        Then I click on this element "Создать перевозку"
        And thes element "Окно при создании новой перевозки" contains the text "Способ тарификации *"
        When I select "<tariffication>" to the inputfields "Способ тарификации *"
        And I select "<shipping warehouse>" to the inputfields "Склад отгрузки *"
        And I select "<delivery warehouse>" to the inputfields "Склад доставки *"
        And I add "Дата отгрузки *" shipping date "<shipping date>" and "Дата доставки *" delivery date "<delivery date>"
        #Добавление ОВХ
        And  I add data "<countMonoPallet>" to the inputfields "Моно-паллеты *"
        And  I add data "<countMixPallet>" to the inputfields "Микс-паллеты *"
        And  I add data "<totalPallet>" to the inputfields "Всего паллето мест"
        And I add data "<weight>" to the inputfields "Вес, кг *"
        And I add data "<cost>" to the inputfields "Стоимость продукции отгружаемой по ТН с НДС"
        And I click on this in button "Подобрать перевозчика"
        And I expect this element "Loader" is not visible
        #Проверка что тариф с компанией подобрался
        And thes element "Транспортная компания *" contains the text "<transportCompany>"
        And I click on this in button "Отправить заявку в ТК"
        And I expect this element "Loader" is not visible
        # Проверка что перевозка создалась в статусе Заявка отправлена в ТК.
        And  I add "<transportCompany>" to the inputfields "Поле поиска по всем параметрам"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        Then I see element "<transportCompany>" in status "Заявка отправлена в ТК"

        # shipping date - дата отгрузки. кол-во дней прибавляется к настоящей дате
        # delivery date - дата доставки. кол-во дней прибавляется к настоящей дате
        # effective date - дата действия тарифа от. кол-во дней прибавляется к настоящей дате
        # expiration date - дата действия тарифа до. кол-во дней прибавляется к настоящей дате

        Examples:
            | login coordinator         | shipping warehouse | delivery warehouse | countMonoPallet | countMixPallet | totalPallet | shipping date | delivery date | tariffication | weight | cost  | transportCompany    |
            | SCJ Transport Coordinator | Томилино           | Котовский          | 10              | 23             | 33          | 1             | 7             | FTL           | 10500  | 15000 | Симпл Деливери Груп |

    Scenario Outline: 04_CreateShippingsChooseACarrierFTLTariff ч3
        Given I click on this in a "Тарифы"
        And I wait on elements "Грид Тарифы"
        # Удаляем тариф
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
            | Симпл Деливери Груп |

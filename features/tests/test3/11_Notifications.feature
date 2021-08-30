@MainRoust

Feature:

    Scenario Outline: 11_Notifications ч1
        # заполняем мыло у 2го координатора
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this in div "Справочники"
        And I click on this in a "Пользователи"
        And I add "<user>" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And thes element "Грид Пользователи" contains the text "<user>"
        And I click on this in div "<user>"
        And I add data "email2" to the inputfields "Email *"
        And I click on this in button "Сохранить"
        # Проверка что мыло добавлено.
        And  I add "<user>" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And thes element "Грид Пользователи" contains the text "email2"
        Then I click on this element "logout"

        Examples:
            | login coordinator           | user        |
            | Roust Transport Coordinator | test_roust2 |

    Scenario Outline: 11_Notifications ч2
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
        # Заполнение блока информация водителя
        And I select "<driver>" to the inputfields "Водитель"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Заполнение блока информация
        And I select "<transportCompany>" to the inputfields "Транспортная компания"
        And I select "<tariffication>" to the inputfields "Способ тарификации"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # перевести  перевозку в статус "В перевозке"
        And I moving shippings status forward "Отправить заявку в ТК"
        # перевести  перевозку в статус "Подтвердить заявку"
        And I moving shippings status forward "Подтвердить заявку"
        # Заполнение блока информация для отправки письма о редактировании в статусе "Подтверждена"
        And I add data "<countPallet2>" to the inputfields "Предварительное"
        And I add data "<countPallet2>" to the inputfields "Фактическое"
        And I add data "<countPallet2>" to the inputfields "Подтверждённое"
        And I add data "<Weight2>" to the inputfields "Плановый"
        And I click on this in button "Сохранить"
        And I expect this element "Loader" is not visible
        # Заходим в накладную чтобы удалить перевозку
        When I click on this element "Накладные"
        And I wait on elements "Orders"
        And I click in random element "random number"
        And thes element "Окно информация при создании новой накладной" contains the text "Информация"
        # перевести  накладную в статус "Создан"
        Then I click on this element "Опции смены статуса в накладной"
        And I click on this in span "Убрать из перевозки"
        And I check "Убрать из перевозки" and answer "Да"

        Examples:
            | login coordinator           | shipping warehouse | delivery warehouse | countPallet | countPallet2 | shipping date | delivery date | materialTent | tariffication | transportCompany | driver                    | Weight | Weight2|
            | Roust Transport Coordinator | РУСТ ИНК Москва    | Котовский          | 4           | 8            | 1             | 7             | 105489       | LTL           | ООО «Кот»        | Абрамов Александр Юрьевич | 1350   | 2700   |

    Scenario Outline: 11_Notifications ч3
        # удаляем мыло у 2го координатора чтобы не шел спам
        When I click on this in div "Справочники"
        And I click on this in a "Пользователи"
        And I add "<user>" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And thes element "Грид Пользователи" contains the text "<user>"
        And I click on this in div "<user>"
        And I add data "email" to the inputfields "Email *"
        And I click on this in button "Сохранить"
        # Проверка что мыло добавлено.
        And  I add "<user>" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And thes element "Грид Пользователи" contains the text "email"
        Then  I click on this element "logout"

        Examples:
            | login coordinator           | user|
            | Roust Transport Coordinator |test_roust2|

    Scenario: 11_Notification ч4
        # Check mail
        And I open the sites "Майлнезия"
        #проверяем письма у админа
        And I add "testmail" to the inputfields "В поле поиска email"
        When I click on this element "Стрелка входа"
        And I pause for 5000ms
        And I have closed all but the first tab
        And I wait on mailnesia elements "testmail"
        And I expects that element "Грид Mailnesia" contains the text "Направлена заявка на перевозку"
        And I expects that element "Грид Mailnesia" contains the text "Обновлены данные по заявке"
        And I expects that element "Грид Mailnesia" contains the text "Назначение водителя и ТС"
        And I expects that element "Грид Mailnesia" contains the text "Отменена заявка на перевозку"
        Then I delete all mails in mailnesia

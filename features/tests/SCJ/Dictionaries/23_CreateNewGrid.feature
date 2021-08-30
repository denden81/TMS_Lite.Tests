@MainSCJ

Feature:

    Scenario Outline: 23_CreateNewGrid ч1
        #Создаем юзера
        Given I log in as a "<login coordinator>" on homepage
        And I wait on elements "Orders"
        When I click on this in div "Справочники"
        And I click on this in a "Пользователи"
        And I click on this element "Добавить нового пользователя"
        And I add data "random user" to the inputfields "Логин *"
        And I add data "password" to the inputfields "Пароль *"
        And I add data "email" to the inputfields "Email *"
        And I add data "random user" to the inputfields "ФИО *"
        And I select "<Entity>" to the inputfields "Юр. лицо"
        And I select "<Role>" to the inputfields "Роль *"
        And I click on this in checkbox "Активен"
        And I click on this in button "Сохранить"
         # Проверка что юзер добавился.
        And  I add "random user" to the inputfields "Поле поиска по всем полям"
        And I press "Enter"
        And I expect this element "Loader" is not visible
        And thes element "Грид Пользователи" contains the text "random user"
        Then  I click on this element "logout"

        Examples:
            | login coordinator           | Entity|Role|
            | SCJ Transport Coordinator | SC Johnson |Транспортный координатор|

    Scenario Outline: 23_CreateNewGrid ч2
       # Заходим новым юзером
        Given I log in as a "random user" on homepage
        And I wait on elements "Orders"
        When I click on this element "Выбрать представление"
        # Создаем новое представление с набором полей
        And I click on this in span "Создать"
        And I add data "random grid" to the inputfields "Наименование"
        And I drag this field in grid "Sold-to" to the inputfields "Выбранные поля"
        And I drag this field in grid "Ship To Code" to the inputfields "Выбранные поля"
        And I drag this field in grid "Номер перевозки" to the inputfields "Выбранные поля"
        And I drag this field in grid "Статус перевозки" to the inputfields "Выбранные поля"
        And I drag this field in grid "Клиент" to the inputfields "Выбранные поля"
        And I drag this field in grid "Плательщик" to the inputfields "Выбранные поля"
        And I drag this field in grid "Дата доставки" to the inputfields "Выбранные поля"
        And I drag this field in grid "Дата создания накладной в системе" to the inputfields "Выбранные поля"
        And I click on this in button "Сохранить"
        And thes element "Грид Пользовательский" contains the text "Sold-to"
        And thes element "Грид Пользовательский" contains the text "Ship To Code"
        And thes element "Грид Пользовательский" contains the text "Номер перевозки"
        And thes element "Грид Пользовательский" contains the text "Статус перевозки"
        And thes element "Грид Пользовательский" contains the text "Клиент"
        And thes element "Грид Пользовательский" contains the text "Плательщик"
        And thes element "Грид Пользовательский" contains the text "Дата доставки"
        Then thes element "Грид Пользовательский" contains the text "Дата создания накладной в системе"
         # Редактирование представление
        When I click on this element "Выбрать представление"
        And I click on this in span "random grid"
        Then I click on this element "Настройка представления"
       # Удаляем набор старых полей
        And I drag this field in grid "Sold-to" to the inputfields "Доступные поля"
        And I drag this field in grid "Ship To Code" to the inputfields "Доступные поля"
        And I drag this field in grid "Номер перевозки" to the inputfields "Доступные поля"
        And I drag this field in grid "Статус перевозки" to the inputfields "Доступные поля"
        And I drag this field in grid "Клиент" to the inputfields "Доступные поля"
        And I drag this field in grid "Плательщик" to the inputfields "Доступные поля"
        And I drag this field in grid "Дата доставки" to the inputfields "Доступные поля"
        And I drag this field in grid "Дата создания накладной в системе" to the inputfields "Доступные поля"
       # Добавляем набор новых полей
        And I drag this field in grid "Перегруз" to the inputfields "Выбранные поля"
        And I drag this field in grid "Кол-во часов простоя машин" to the inputfields "Выбранные поля"
        And I drag this field in grid "Марка ТС" to the inputfields "Выбранные поля"
        And I click on this in button "Сохранить"
        # Проверяем что поля есть в гриде
        And thes element "Грид Пользовательский" contains the text "Перегруз"
        And thes element "Грид Пользовательский" contains the text "Кол-во часов простоя машин"
        And thes element "Грид Пользовательский" contains the text "Марка ТС"
        # Удаление представления
        When I click on this element "Выбрать представление"
        And I click on this in span "random grid"
        When I click on this element "Настройка представления"
        And I click on this in button "Удалить"
        And I check "Удалить представление?" and answer "Да"
        And I expect this element "Loader" is not visible
        # Проверяем что поля по умолчанию есть в гриде
        And thes element "Грид Пользовательский" contains the text "Уникальный номер"
        And thes element "Грид Пользовательский" contains the text "Статус накладной"
        Then thes element "Грид Пользовательский" contains the text "Номер перевозки"
        Examples:
            | login coordinator           |
            | SCJ Transport Coordinator |

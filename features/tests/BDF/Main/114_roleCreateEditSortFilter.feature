@MainBDF
@dictionaries
@Roles
@d2

Feature: Create, edit, sort, filter Roles
    create new Role, edit it, sort and filter fields  

    Scenario: Create Role
        Given I log in as a user Administrator on homepage 
        When  I click on this element "dictionaries"
        And   I click on this element "dictionary_roles"
        When  I click on this element "dictionary_create_button"
        And   I add "dictionary_role_value" to the inputfields "dictionary_field_name"
        And   I click on this element "dictionary_role_watch_orders_privilegy"
        And   I click on this button "button_save"

    Scenario: Edit Role
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_role_value" to the inputfields "dictionary_field_name"
        And   I click on this element "center_of_dictionary_page"
        When  I click on this element "dictionary_auto_test_role"
        And   I add "dictionary_role_value1" to the inputfields "dictionary_field_name"
        And   I click on this button "button_save"

    Scenario: Sort Role
        And   I click on this button "dictionary_clear_filter"
        And   I click on this element "dictionaries_field_name"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Тестовая Роль1"
        And   I click on this element "dictionaries_field_name"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Administrator"
        And   I click on this element "dictionaries_field_name"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Administrator"

    Scenario: Filter Role
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_role_value1" to the inputfields "dictionary_field_name"
        And   I click on this element "center_of_dictionary_page"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Тестовая Роль1"
        And   I expects that element "dictionaries_second_line_first_value" does not exist 
@MainBDF
@dictionaries
@Users
@d3

Feature: Create, edit, sort, filter Users
    create new User, edit it, sort and filter fields  

    Scenario: Create User
        Given I log in as a user Administrator on homepage 
        When  I click on this element "dictionaries"
        And   I click on this element "dictionary_users"
        When  I click on this element "dictionary_create_button"
        And   I add "dictionary_user_value" to the inputfields "dictionary_field_login"
        And   I add "passwordBdf" to the inputfields "password"
        And   I add "auto_test_user@test.com" to the inputfields "dictionary_field_email"
        And   I add "dictionary_user_value" to the inputfields "dictionary_field_userName"
        And   I click on this element "dictionary_user_role_input"
        And   I click on this element "dictionary_user_role_admin"
        And   I click on this element "dictionary_active_checkbox"
        And   I click on this button "button_save"

    Scenario: Edit User
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_user_value" to the inputfields "dictionary_field_login"
        And   I click on this element "center_of_dictionary_page"
        When  I click on this element "dictionary_auto_test_user"
        And   I add "dictionary_user_value1" to the inputfields "dictionary_field_login"
        And   I click on this button "button_save"

    Scenario: Sort Role
        And   I click on this button "dictionary_clear_filter"
        And   I click on this element "dictionary_user_field_login"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "zauto_test_user1"
        And   I click on this element "dictionary_user_field_login"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "aastashkin"
        And   I click on this element "dictionary_user_field_login"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "aastashkin"

    Scenario: Filter Role
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_user_value1" to the inputfields "dictionary_field_login"
        And   I click on this element "center_of_dictionary_page"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "zauto_test_user1"
        And   I expects that element "dictionaries_second_line_first_value" does not exist 
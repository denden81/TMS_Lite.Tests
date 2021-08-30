@MainBDF
@dictionaries
@Bodytypes
@d3

Feature: Create, edit, sort, filter Bodytypes
    create new Bodytype, edit it, sort and filter fields  

    Scenario: Create Bodytype
        Given I log in as a user Administrator on homepage 
        When  I click on this element "dictionaries"
        And   I click on this element "dictionary_body_types"
        When  I click on this element "dictionary_create_button"
        And   I add "dictionary_body_type_name_value" to the inputfields "dictionary_field_name"
        And   I click on this button "button_save"

    Scenario: Edit Bodytype
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_body_type_name_value" to the inputfields "dictionary_field_name"
        And   I click on this element "center_of_dictionary_page"
        When  I click on this element "dictionary_auto_test_body_type"
        And   I add "dictionary_body_type_name_value1" to the inputfields "dictionary_field_name"
        And   I click on this button "button_save"

    Scenario: Sort Bodytype
        And   I click on this button "dictionary_clear_filter"
        And   I click on this element "dictionaries_field_name"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "тестТипКузова1"
        And   I click on this element "dictionaries_field_name"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Реф"
        And   I click on this element "dictionaries_field_name"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Реф"

    Scenario: Filter Bodytype
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_body_type_name_value1" to the inputfields "dictionary_field_name"
        And   I click on this element "center_of_dictionary_page"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "тестТипКузова1"
        And   I expects that element "dictionaries_second_line_first_value" does not exist 
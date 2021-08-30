@MainBDF
@dictionaries
@Tonnages
@d3

Feature: Create, edit, sort, filter Tonnages
    create new Tonnage, edit it, sort and filter fields  

    Scenario: Create Tonnage
        Given I log in as a user Administrator on homepage 
        When  I click on this element "dictionaries"
        And   I click on this element "dictionary_tonnages"
        When  I click on this element "dictionary_create_button"
        And   I add "dictionary_tonnages_name_value" to the inputfields "dictionary_field_name"
        And   I click on this button "button_save"

    Scenario: Edit Tonnage
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_tonnages_name_value" to the inputfields "dictionary_field_name"
        And   I click on this element "center_of_dictionary_page"
        When  I click on this element "dictionary_auto_test_tonnage"
        And   I add "dictionary_tonnages_name_value1" to the inputfields "dictionary_field_name"
        And   I click on this button "button_save"

    Scenario: Sort Tonnage
        And   I click on this button "dictionary_clear_filter"
        And   I click on this element "dictionaries_field_name"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "test_tonnage1"
        And   I click on this element "dictionaries_field_name"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "10 т"
        And   I click on this element "dictionaries_field_name"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "10 т"

    Scenario: Filter Tonnage
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_tonnages_name_value1" to the inputfields "dictionary_field_name"
        And   I click on this element "center_of_dictionary_page"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "test_tonnage1"
        And   I expects that element "dictionaries_second_line_first_value" does not exist

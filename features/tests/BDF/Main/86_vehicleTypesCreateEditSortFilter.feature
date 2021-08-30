@MainBDF
@dictionaries
@VehicleTypes
@d1
Feature: Create, edit, sort, filter VehicleType
    create new VehicleType, edit it, sort and filter fields  

    Scenario: Create VehicleType
        Given I log in as a user Administrator on homepage 
        When  I click on this element "dictionaries"
        And   I click on this element "dictionary_vehicle_types"
        When  I click on this element "dictionary_create_button"
        And   I add "dictionary_vehicle_type_value" to the inputfields "dictionary_field_name"
        And   I click on this button "button_save"

    Scenario: Edit VehicleType
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_vehicle_type_value" to the inputfields "dictionary_field_name"
        And   I click on this element "center_of_dictionary_page"
        When  I click on this element "dictionary_auto_test_vehicle_type"
        And   I add "dictionary_vehicle_type_value1" to the inputfields "dictionary_field_name"
        And   I click on this button "button_save"

    Scenario: Sort DocumentType
        And   I click on this button "dictionary_clear_filter"
        And   I click on this element "dictionaries_field_name"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Тест ТС1"
        And   I click on this element "dictionaries_field_name"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Реф 10 т"
        And   I click on this element "dictionaries_field_name"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Реф 10 т"

    Scenario: Filter DocumentType
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_vehicle_type_value1" to the inputfields "dictionary_field_name"
        And   I click on this element "center_of_dictionary_page"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Тест ТС1"
        And   I expects that element "dictionaries_second_line_first_value" does not exist 

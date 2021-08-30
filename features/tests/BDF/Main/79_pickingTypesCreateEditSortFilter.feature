@MainBDF
@dictionaries
@PickingTypes
@d1
Feature: Create, edit, sort, filter PikingType
    create new PikingType, edit it, sort and filter fields  

    Scenario: Create PikingType
        Given I log in as a user Administrator on homepage 
        When  I click on this element "dictionaries"
        And   I click on this element "dictionary_piking_types"
        When  I click on this element "dictionary_create_button"
        And   I add "dictionary_picking_type_value" to the inputfields "dictionary_field_name"
        And   I click on this button "button_save"

    Scenario: Edit PikingType
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_picking_type_value" to the inputfields "dictionary_field_name"
        And   I click on this element "center_of_dictionary_page"
        When  I click on this element "dictionary_auto_test_picking_type" 
        And   I add "dictionary_picking_type_value1" to the inputfields "dictionary_field_name"
        And   I click on this button "button_save"

    Scenario: Sort PikingType
        And   I click on this button "dictionary_clear_filter"
        And   I click on this element "dictionaries_field_name"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Тестовый тип комплектации"
        And   I click on this element "dictionaries_field_name"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "1 артикул на паллете"
        And   I click on this element "dictionaries_field_name"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "1 артикул на паллете"

    Scenario: Filter PikingType
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_picking_type_value1" to the inputfields "dictionary_field_name"
        And   I click on this element "center_of_dictionary_page"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Тестовый тип комплектации1"
        And   I expects that element "dictionaries_second_line_first_value" does not exist 
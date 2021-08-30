@MainBDF
@dictionaries
@ShippingWarehouses
@d3

Feature: Create, edit, sort, filter ShippingWarehouses
    create new ShippingWarehouse, edit it, sort and filter fields  

    Scenario: Create ShippingWarehouse
        Given I log in as a user Administrator on homepage 
        When  I click on this element "dictionaries"
        And   I click on this element "dictionary_shipping_warehouses"
        When  I click on this element "dictionary_create_button"
        And   I add "dictionary_field_shipping_warehouse_code_value" to the inputfields "dictionary_field_shipping_warehouse_code"
        And   I add "dictionary_shipping_warehouse_name_value" to the inputfields "dictionary_field_warehouse_name"
        And   I click on this button "button_save"

    Scenario: Edit ShippingWarehouse
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_field_shipping_warehouse_code_value" to the inputfields "dictionary_field_shipping_warehouse_code"
        And   I click on this element "center_of_dictionary_page"
        When  I click on this element "dictionary_auto_test_shipping_warehouse"
        And   I add "dictionary_shipping_warehouse_name_value1" to the inputfields "dictionary_field_warehouse_name"
        And   I click on this button "button_save"
        And   I click on this button "dictionary_clear_filter"

    Scenario: Sort ShippingWarehouse
        And   I click on this button "dictionary_clear_filter"
        And   I click on this element "dictionary_shipping_warehouse_field_code"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "9999"
        And   I click on this element "dictionary_shipping_warehouse_field_code"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "1262"
        And   I click on this element "dictionary_shipping_warehouse_field_code"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "1262"
        And   I click on this element "dictionary_shipping_warehouse_field_name"
        Then  I expects that element "dictionaries_first_line_second_value" contains the text "ФМ Новосибирск"
        And   I click on this element "dictionary_shipping_warehouse_field_name"
        Then  I expects that element "dictionaries_first_line_second_value" contains the text "Мейджор"
        And   I click on this element "dictionary_shipping_warehouse_field_name"
        Then  I expects that element "dictionaries_first_line_second_value" contains the text "Мейджор"

    Scenario: Filter DocumentType
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_field_shipping_warehouse_code_value" to the inputfields "dictionary_field_shipping_warehouse_code"
        And   I click on this element "center_of_dictionary_page"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "9999"
        And   I expects that element "dictionaries_second_line_first_value" does not exist
        And   I click on this button "dictionary_clear_filter"
        When  I click on this element "dictionary_second_filter"
        And   I add "dictionary_shipping_warehouse_name_value1" to the inputfields "dictionary_field_warehouse_name"
        And   I click on this element "center_of_dictionary_page"
        Then  I expects that element "dictionaries_first_line_second_value" contains the text "ТестовыйСкладОтгрузки1"
        And   I expects that element "dictionaries_second_line_first_value" does not exist
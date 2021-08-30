@MainBDF
@dictionaries
@TransportCompanies
@d2

Feature: Create, edit, sort, filter TransportCompanies
    create new TransportCompany, edit it, sort and filter fields  

    Scenario: Create TransportCompany
        Given I log in as a user Administrator on homepage 
        When  I click on this element "dictionaries"
        And   I click on this element "dictionary_transport_companies"
        When  I click on this element "dictionary_create_button"
        And   I add "dictionary_tk_title_value" to the inputfields "dictionary_field_title"  
        When  I click on this element "not_send_to_pooling_radiobutton"
        And   I click on this button "button_save"

    Scenario: Edit TransportCompany
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_tk_title_value" to the inputfields "dictionary_field_title" 
        And   I click on this element "center_of_dictionary_page"
        When  I click on this element "dictionary_auto_test_tk"
        And   I add "dictionary_tk_title_value1" to the inputfields "dictionary_field_title"
        And   I click on this button "button_save"

    Scenario: Sort TransportCompany
        And   I click on this button "dictionary_clear_filter"
        And   I click on this element "dictionaries_field_title"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Тест ТК1"
        And   I click on this element "dictionaries_field_title"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "FM Logistic"
        And   I click on this element "dictionaries_field_title"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "FM Logistic"
        And   I click on this element "dictionary_tk_sending_to_pooling"
        Then  I expects that element "dictionaries_first_line_fourth_value" contains the text "Да"
        And   I click on this element "dictionary_tk_sending_to_pooling"
        Then  I expects that element "dictionaries_first_line_fourth_value" contains the text "Нет"
        And   I click on this element "dictionary_tk_sending_to_pooling"
        Then  I expects that element "dictionaries_first_line_fourth_value" contains the text "Да"

    Scenario: Filter TransportCompany
        When  I click on this element "dictionary_first_filter"
        And   I add "dictionary_tk_title_value1" to the inputfields "dictionary_field_title"
        And   I click on this element "center_of_dictionary_page"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Тест ТК1"
        And   I expects that element "dictionaries_second_line_first_value" does not exist 
        And   I click on this button "dictionary_clear_filter"
        When  I click on this element "dictionary_fourth_filter"
        And   I click on this button "dictionaries_filter_no_att"
        And   I click on this element "center_of_dictionary_page"
        Then  I expects that element "dictionaries_first_line_fourth_value" contains the text "Нет"

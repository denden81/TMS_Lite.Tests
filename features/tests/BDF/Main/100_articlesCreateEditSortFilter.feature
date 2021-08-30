@MainBDF
@dictionaries
@Articles
@d2

Feature: Create, edit, sort, filter Articles
    create new Article, edit it, sort and filter fields  

    Scenario: Create Articles
        Given I log in as a user Administrator on homepage 
        When  I click on this element "dictionaries"
        And   I click on this element "dictionary_articles"
        When  I click on this element "dictionary_create_button"
        And   I add "dictionary_article_nart_value" to the inputfields "dictionary_field_nart"      
        And   I add "99" to the inputfields "dictionary_field_shelf_life"
        And   I click on this button "button_save"

    Scenario: Edit Articles
        When  I click on this element "dictionary_third_filter"
        And   I add "dictionary_article_nart_value" to the inputfields "dictionary_field_nart"   
        And   I click on this element "center_of_dictionary_page"
        When  I click on this element "dictionary_auto_test_article"
        And   I add "dictionary_article_nart_value1" to the inputfields "dictionary_field_nart"
        And   I click on this button "button_save"

    Scenario: Sort Articles
        And   I click on this button "dictionary_clear_filter"
        And   I click on this element "dictionary_article_field_nart"
        Then  I expects that element "dictionaries_first_line_third_value" contains the text "testNART1"
        And   I click on this element "dictionary_article_field_nart"
        Then  I expects that element "dictionaries_first_line_third_value" contains the text "1111202011112022"
        And   I click on this element "dictionary_article_field_nart"
        Then  I expects that element "dictionaries_first_line_third_value" contains the text "813801987020"

    Scenario: Filter VehicleType
        When  I click on this element "dictionary_third_filter"
        And   I add "dictionary_article_nart_value1" to the inputfields "dictionary_field_nart"
        And   I click on this element "center_of_dictionary_page"
        Then  I expects that element "dictionaries_first_line_third_value" contains the text "testNART1"
        And   I expects that element "dictionaries_second_line_first_value" does not exist 
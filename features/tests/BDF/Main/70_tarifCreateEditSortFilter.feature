@MainBDF
@dictionaries
@Tarif
@d1
Feature: Create, edit, delete tarif,
    sort and filter fields       

    Scenario: Create tarif
        Given I log in as a user Administrator on homepage 
        When  I click on this element "tarrifs"
        And   I click on this element "dictionary_create_button"
        And   I click on this element "tariff_tk_input"
        And   I click on this element "mo_tk_value_fm_logistic"
        And   I click on this element "tariff_shipping_city_input"
        And   I click on this element "city_value_moscow"
        And   I click on this element "tariff_delivery_city_input"
        And   I click on this element "city_value_moscow_with_first_space"
        And   I click on this element "tariff_tariffication_method_input"
        And   I click on this element "tariffication_method_value_ftl"
        And   I click on this element "tariff_start_date_input"
        And   I click on this element "twenty_date"
        And   I click on this element "tariff_stop_date_input"
        And   I click on this element "twenty_date"
        And   I click on this button "button_save"
        And   I pause for 10000ms
        Then  I wait on elements "dictionary_create_button"

    Scenario: Edit tarif
        When  I click on this element "dictionary_second_filter"
        And   I click on this element "filter_value_moscow"
        And   I click on this element "center_of_dictionary_page"
        And   I click on this element "city_value_moscow"
        And   I click on this element "tariff_tariffication_method_input"
        And   I click on this element "tariffication_method_value_ltl"
        And   I click on this button "button_save"
        And   I pause for 10000ms
        Then  I wait on elements "dictionary_create_button"

    Scenario: Delete tarif
        When  I click on this element "city_value_moscow"
        And   I click on this element "tariff_delete_button"
        And   I click on this element "confirm_delete_button"
        Then  I wait on elements "dictionary_create_button"

    Scenario: Create tarifs for sort and filter
        When  I click on this element "dictionary_create_button"
        And   I click on this element "tariff_tk_input"
        And   I click on this element "tk_value_vesta"
        And   I click on this element "tariff_shipping_city_input"
        And   I click on this element "city_value_moscow"
        And   I click on this element "tariff_delivery_city_input"
        And   I add "ivanovo_city_value" to the inputfields "tariff_delivery_city_input"
        And   I click on this element "city_value_ivanovo"
        And   I click on this element "tariff_tariffication_method_input"
        And   I click on this element "tariffication_method_value_pooling"
        And   I click on this element "tariff_start_date_input"
        And   I click on this element "twenty_date"
        And   I click on this element "tariff_stop_date_input"
        And   I click on this element "twenty_date"
        And   I click on this button "button_save"
        And   I pause for 10000ms
        Then  I wait on elements "dictionary_create_button"
        When  I click on this element "dictionary_create_button"
        And   I click on this element "tariff_tk_input"
        And   I click on this element "tk_value_dialavtotrans"
        And   I click on this element "tariff_shipping_city_input"
        And   I click on this element "city_value_moscow"
        And   I click on this element "tariff_delivery_city_input"
        And   I add "volgograd_city_value" to the inputfields "tariff_delivery_city_input"
        And   I click on this element "city_value_volgograd"
        And   I click on this element "tariff_tariffication_method_input"
        And   I click on this element "tariffication_method_value_ftl"
        And   I click on this element "tariff_start_date_input"
        And   I click on this element "twenty_eight_date"
        And   I click on this element "tariff_stop_date_input"
        And   I click on this element "twenty_eight_date"
        And   I click on this button "button_save"
        And   I pause for 10000ms
        Then  I wait on elements "dictionary_create_button"
        When  I click on this element "dictionary_create_button"
        And   I click on this element "tariff_tk_input"
        And   I click on this element "mo_tk_value_fm_logistic"
        And   I click on this element "tariff_shipping_city_input"
        And   I click on this element "city_value_moscow"
        And   I click on this element "tariff_delivery_city_input"
        And   I add "astrahan_city_value" to the inputfields "tariff_delivery_city_input"
        And   I click on this element "city_value_astrahan"
        And   I click on this element "tariff_tariffication_method_input"
        And   I click on this element "tariffication_method_value_ltl"
        And   I click on this element "tariff_start_date_input"
        And   I click on this element "eighteen_date"
        And   I click on this element "tariff_stop_date_input"
        And   I click on this element "eighteen_date"
        And   I click on this button "button_save"
        And   I pause for 10000ms
        Then  I wait on elements "dictionary_create_button"

    Scenario: Sorting tarifs
        When  I click on this element "mo_transport_company"
        And   I pause for 3000ms
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Диалавтотранс"
        When  I click on this element "mo_transport_company"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "FM Logistic"
        When  I click on this element "mo_transport_company"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Диалавтотранс"
        When  I click on this element "tariff_delivery_city_sort_field"
        Then  I expects that element "dictionaries_first_line_third_value" contains the text "Иваново"
        When  I click on this element "tariff_delivery_city_sort_field"
        Then  I expects that element "dictionaries_first_line_third_value" contains the text "Астрахань"
        When  I click on this element "tariff_delivery_city_sort_field"
        Then  I expects that element "dictionaries_first_line_third_value" contains the text "Волгоград"
        When  I click on this element "tariff_tariffication_method_sort_field"
        Then  I expects that element "dictionaries_first_line_sixth_value" contains the text "Pooling"
        When  I click on this element "tariff_tariffication_method_sort_field"
        Then  I expects that element "dictionaries_first_line_sixth_value" contains the text "FTL"
        When  I click on this element "tariff_tariffication_method_sort_field"
        Then  I expects that element "dictionaries_first_line_sixth_value" contains the text "FTL"
        When  I click on this element "tariff_start_date_sort_field"
        Then  I expects that element "dictionaries_first_line_ninth_value" contains the text "20"
        When  I click on this element "tariff_start_date_sort_field"
        Then  I expects that element "dictionaries_first_line_ninth_value" contains the text "28"
        When  I click on this element "tariff_start_date_sort_field"
        Then  I expects that element "dictionaries_first_line_ninth_value" contains the text "28"          

    Scenario: Filter tarif
        When  I click on this element "dictionary_first_filter"
        And   I click on this element "tariff_filter_tk_vesta"
        And   I click on this element "center_of_dictionary_page"
        Then  I expects that element "dictionaries_first_line_first_value" contains the text "Vesta"
        And   I click on this button "dictionary_clear_filter"
        And   I click on this element "dictionary_second_filter"
        And   I click on this element "filter_value_moscow"
        And   I click on this element "center_of_dictionary_page"
        When  I click on this element "dictionary_third_filter"
        And   I click on this element "filter_value_volgograd"
        And   I click on this element "center_of_dictionary_page"
        Then  I expects that element "dictionaries_first_line_third_value" contains the text "Волгоград"
        And   I click on this button "dictionary_clear_filter"
        And   I click on this element "dictionary_second_filter"
        And   I click on this element "filter_value_moscow"
        And   I click on this element "center_of_dictionary_page"
        When  I click on this element "dictionary_sixth_filter"
        And   I click on this element "filter_value_ltl"
        And   I click on this element "center_of_dictionary_page"
        Then  I expects that element "dictionaries_first_line_sixth_value" contains the text "LTL"
        And   I click on this button "dictionary_clear_filter"
        And   I click on this element "dictionary_second_filter"
        And   I click on this element "filter_value_moscow"
        And   I click on this element "center_of_dictionary_page"
        When  I click on this element "dictionary_ninth_filter"
        And   I click on this element "twenty_date"
        And   I click on this element "center_of_dictionary_page"
        Then  I expects that element "dictionaries_first_line_ninth_value" contains the text "20"
        And   I click on this button "dictionary_clear_filter"
        And   I click on this element "dictionary_second_filter"
        And   I click on this element "filter_value_moscow"
        And   I click on this element "center_of_dictionary_page"

    Scenario: Delete tarif
        When  I click on this element "city_value_moscow"
        And   I click on this element "tariff_delete_button"
        And   I click on this element "confirm_delete_button"
        Then  I wait on elements "dictionary_create_button"    
        When  I click on this element "city_value_moscow"
        And   I click on this element "tariff_delete_button"
        And   I click on this element "confirm_delete_button"
        Then  I wait on elements "dictionary_create_button"   
        When  I click on this element "city_value_moscow"
        And   I click on this element "tariff_delete_button"
        And   I click on this element "confirm_delete_button"
        Then  I wait on elements "dictionary_create_button"  
        And   I click on this element "dictionary_second_filter"
        Then  I expect that element "filter_value_moscow" does not exist 
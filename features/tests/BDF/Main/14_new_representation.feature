@MainBDF
@representation
Feature: Create, edit, delete new representation
    create new representation, edit it and delete
    and check that creation, edit and delete are success   

    Background:
        Given I log in as a user Administrator on homepage

    Scenario: Create representation, edit it, then delete and check that procedurs were success    
        When I click on this element "select_repr"
        And  I click on this element "create_repr"
        And  I add "repr_name_value" to the inputfields "repr_name"
        And  I drags element "repr_soldto_number" to element "repr_select_fields"
        And  I drags element "repr_delivery_adr" to element "repr_select_fields"   
        And  I click on this element "button_save"     
        And  I expects that element "created_repr" contains the text "авто-тест"
        Then I expects that element "created_repr_soldto_number" does exist
        And  I expects that element "created_repr_delivery_adr" does exist
        When I click on this element "repr_settings"
        And  I drags element "repr_shippings_adr" to element "repr_select_fields" 
        And  I click on this element "button_save"
        And  I expects that element "created_repr" contains the text "авто-тест"
        Then I expects that element "created_repr_soldto_number" does exist
        And  I expects that element "created_repr_delivery_adr" does exist
        And  I expects that element "created_repr_shippings_adr" does exist
        When I click on this element "repr_settings"
        And  I click on this element "button_del"
        And  I click on this element "confirm_del_button_repr"
        And  I expects this element "created_repr" not contains the text "авто-тест"

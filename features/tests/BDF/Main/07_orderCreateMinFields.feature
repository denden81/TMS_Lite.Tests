@MainBDF
@order
Feature: Create order with min fields
    create order with minimum requirement fields 
    and check it's status

    Background:
        Given I open the url "/"
        And  I wait on elements "buttonEnter"
        And  I click on this element "select_lang"
        And  I click on this element "Russian"

    Scenario Outline: Create order with minimum requirement fields and check it's status after creation
        When I add "<login>" to the inputfields "username"
        And  I add "<password>" to the inputfields "password"
        And  I click on this button "submit"
		Then I expects that element "adminProfile" contains the text "auto_admin"
        And  I expects that element "minOrderNumber" does not exist
        When I click on this element "create_order_button"
		And  I add "min_order_value" to the inputfields "order_number"
		And  I add "min_client_order_value" to the inputfields "client_order_number"
		And  I click on this element "order_date"
		And  I click on this element "twenty_date"
        And  I add "astrahan_sold_to_value" to the inputfields "sold_to_order_card"
		And  I click on this element "confirm_sold_to"
		And  I click on this button "save_order"
        And  I click on this element "minOrderNumber"
        And  I expects that element "first_order" contains the text "Не проверен"
        When I click on this element "ellipsis_order_page"
        And  I click on this element "delete_order"
        And  I click on this button "confirm_delete_button"
        Then I expects that element "minOrderNumber" does not exist
        Examples:
            | login         | password    |
            | loginBdfAdmin | passwordBdf |
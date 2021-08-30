@MainBDF
@order
Feature: Create order without min fields
    create order without requirement field sold to
    and check it's status      

    Background:
        Given I log in as a user Administrator on homepage

    Scenario Outline: Attempt to create order without sold to field and check that attempt failed
        Then I expects that element "order_without_order_soldto" does not exist
        When I click on this element "create_order_button"
		And  I add "<order_value>" to the inputfields "order_number"
		And  I add "<client_order_value>" to the inputfields "client_order_number"
		And  I click on this element "<ord_date>"
		And  I click on this element "<num_of_date>"
		And  I click on this button "save_order"
        Then I expects that element "req_err_input_order_date" does exist
        Examples:
            | order_value                      | client_order_value     | ord_date   | num_of_date | sold_to_value          |
            | order_value_without_order_soldto | min_client_order_value | order_date | twenty_date |                        |
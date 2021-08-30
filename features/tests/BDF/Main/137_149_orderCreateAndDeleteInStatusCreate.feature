@MainBDF
@order
@statusOrder
Feature: Create order in status created
    and delete it

    Background:
        Given I log in as a user Administrator on homepage

    Scenario: Create order in status created and delete it 
        Then  I expects that element "createdOrderNumber" does not exist
        When I click on this element "create_order_button"
		And  I add "created_order_value" to the inputfields "order_number"
		And  I add "min_client_order_value" to the inputfields "client_order_number"
		And  I click on this element "order_date"
		And  I click on this element "twenty_date"
        And  I add "shippings_warehouse_value" to the inputfields "shipping_warehouse_order_card"
        And  I click on this element "confirm_shippings_warehouse"        
        And  I add "astrahan_sold_to_value" to the inputfields "sold_to_order_card"
		And  I click on this element "confirm_sold_to"
        And  I click on this element "delivery_date"
		And  I click on this element "twenty_date"
        And  I add "payer_order_value" to the inputfields "payer_field"
		And  I click on this button "save_order"
        And  I click on this element "createdOrderNumber"
        And  I expect this element "Loader" is not visible
        When  I expects that element "first_order" contains the text "Создан"
        When I click on this element "ellipsis_order_page"
        And  I click on this element "delete_order"
        And  I click on this button "confirm_delete_button"
        Then  I expects that element "createdOrderNumber" does not exist

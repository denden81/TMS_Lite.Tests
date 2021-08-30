@MainBDF
@order
@test62
@statusOrder
Feature: Create some orders and move its status to confirmed
    then delete them  

    Background:
        Given I log in as a user Administrator on homepage

    Scenario: Create some orders and move its status to confirmed  
        When I click on this element "create_order_button"
		And  I add "some_order_to_confirm1" to the inputfields "order_number"
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
        When I click on this element "create_order_button"
        And  I add "some_order_to_confirm2" to the inputfields "order_number"
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
        When I click on this element "create_order_button"
        And  I add "some_order_to_confirm3" to the inputfields "order_number"
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
        When I click on this element "order_name_filter" 
        And  I add "conf_filter_order_name_value" to the inputfields "order_number"
        And  I pause for 3000ms
        And  I click on this element "third_checkbox_orders"
        And  I click on this element "second_checkbox_orders"
        And  I click on this element "first_checkbox_orders"
        And  I click on this button "confirm_order"
        And  I click on this element "ok_button"
        Then I expects that element "third_order_status_orders" contains the text "Подтвержден"
        Then I expects that element "second_order_status_orders" contains the text "Подтвержден"
        Then I expects that element "first_order_status_orders" contains the text "Подтвержден"
        When I click on this button "ellipsis_orders_down_page"
        And  I click on this button "order_roll_back_ellipsis"
        And  I click on this element "ok_button"
        And  I click on this element "delete_order_orders_page"
        And  I click on this button "ok_button"
        And  I expect this element "Loader" is not visible

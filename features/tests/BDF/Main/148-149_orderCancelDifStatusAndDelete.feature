@MainBDF
@order
@test1
@statusOrder
Feature: Order's cancel
    from status not verified, created, confirmed
    and delete orders
        
    Scenario: Create order in status not verified, cancel it and delete
        Given I log in as a user Administrator on homepage 
        Then I expects that element "orderCancelNumber" does not exist
        When I click on this element "create_order_button"
		And  I add "order_cancel_value" to the inputfields "order_number"
		And  I add "min_client_order_value" to the inputfields "client_order_number"
		And  I click on this element "order_date"
		And  I click on this element "twenty_date"
        And  I add "shippings_warehouse_value" to the inputfields "shipping_warehouse_order_card"
        And  I click on this element "confirm_shippings_warehouse"        
        And  I add "astrahan_sold_to_value" to the inputfields "sold_to_order_card"
		And  I click on this element "confirm_sold_to"
        And  I click on this element "delivery_date"
		And  I click on this element "twenty_date"
		And  I click on this button "save_order"
        And  I click on this element "orderCancelNumber"
        And  I expect this element "Loader" is not visible
        When I expects that element "first_order" contains the text "Не проверен"
        And  I click on this button "return_order_page"
        When I click on this element "order_name_filter" 
        And  I add "order_cancel_value" to the inputfields "order_number"
        And  I click on this element "center_of_orders_page"
        And  I click on this button "order_checkbox"
        And  I click on this button "cancel_order"
        And  I click on this element "ok_button"
        And  I click on this element "orderCancelNumber"
        And  I expect this element "Loader" is not visible
        When I expects that element "first_order" contains the text "Отменён"
        And  I click on this button "return_order_page"
        When I click on this element "order_name_filter" 
        And  I add "order_cancel_value" to the inputfields "order_number"
        And  I click on this element "center_of_orders_page"
        And  I click on this button "order_checkbox"
        And  I click on this button "order_roll_back"
        And  I click on this element "ok_button"
        And  I click on this element "orderCancelNumber"
        And  I expect this element "Loader" is not visible
        When I expects that element "first_order" contains the text "Не проверен"
        And  I click on this button "return_order_page"
        When I click on this element "order_name_filter" 
        And  I add "order_cancel_value" to the inputfields "order_number"
        And  I click on this element "center_of_orders_page"
        And  I click on this button "order_checkbox"
        And  I click on this element "delete_order_orders_page"
        And  I click on this button "ok_button"
        And  I expect this element "Loader" is not visible
        Then  I expects that element "statusOrderNumber" does not exist
    
    Scenario: Create order in status created, cancel it and delete 
        Then I expects that element "orderCancelNumber" does not exist
        When I click on this element "create_order_button"
		And  I add "order_cancel_value" to the inputfields "order_number"
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
        And  I click on this element "orderCancelNumber"
        And  I expect this element "Loader" is not visible
        When I expects that element "first_order" contains the text "Создан"
        And  I click on this button "return_order_page"
        When I click on this element "order_name_filter" 
        And  I add "order_cancel_value" to the inputfields "order_number"
        And  I click on this element "center_of_orders_page"
        And  I click on this button "order_checkbox"
        And  I click on this button "cancel_order"
        And  I click on this element "ok_button"
        And  I click on this element "orderCancelNumber"
        And  I expect this element "Loader" is not visible
        When I expects that element "first_order" contains the text "Отменён"
        And  I click on this button "return_order_page"
        When I click on this element "order_name_filter" 
        And  I add "order_cancel_value" to the inputfields "order_number"
        And  I click on this element "center_of_orders_page"
        And  I click on this button "order_checkbox"
        And  I click on this button "order_roll_back"
        And  I click on this element "ok_button"
        And  I click on this element "orderCancelNumber"
        And  I expect this element "Loader" is not visible
        When I expects that element "first_order" contains the text "Создан"
        And  I click on this button "return_order_page"
        When I click on this element "order_name_filter" 
        And  I add "order_cancel_value" to the inputfields "order_number"
        And  I click on this element "center_of_orders_page"
        And  I click on this button "order_checkbox"
        And  I click on this element "delete_order_orders_page"
        And  I click on this button "ok_button"
        And  I expect this element "Loader" is not visible
        Then  I expects that element "statusOrderNumber" does not exist

    Scenario: Create order in status created, move to confirmed, cancel it and delete 
        Then I expects that element "orderCancelNumber" does not exist
        When I click on this element "create_order_button"
		And  I add "order_cancel_value" to the inputfields "order_number"
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
        And  I add "order_cancel_value" to the inputfields "order_number"
        And  I click on this element "center_of_orders_page"
        And  I click on this button "order_checkbox"
        And  I click on this button "confirm_order"
        And  I click on this element "ok_button"
        And  I click on this element "orderCancelNumber"
        And  I expect this element "Loader" is not visible
        When  I expects that element "first_order" contains the text "Подтвержден"
        And  I click on this button "return_order_page"
        When I click on this element "order_name_filter" 
        And  I add "order_cancel_value" to the inputfields "order_number"
        And  I click on this element "center_of_orders_page"
        And  I click on this button "order_checkbox"
        And  I click on this button "cancel_order"
        And  I click on this element "ok_button"
        And  I click on this element "orderCancelNumber"
        And  I expect this element "Loader" is not visible
        When I expects that element "first_order" contains the text "Отменён"
        And  I click on this button "return_order_page"
        When I click on this element "order_name_filter" 
        And  I add "order_cancel_value" to the inputfields "order_number"
        And  I click on this element "center_of_orders_page"
        And  I click on this button "order_checkbox"
        And  I click on this button "order_roll_back"
        And  I click on this element "ok_button"
        And  I click on this element "orderCancelNumber"
        And  I expect this element "Loader" is not visible
        When I expects that element "first_order" contains the text "Создан"
        And  I click on this button "return_order_page"
        When I click on this element "order_name_filter" 
        And  I add "order_cancel_value" to the inputfields "order_number"
        And  I click on this element "center_of_orders_page"
        And  I click on this button "order_checkbox"
        And  I click on this element "delete_order_orders_page"
        And  I click on this button "ok_button"
        And  I expect this element "Loader" is not visible
        Then  I expects that element "statusOrderNumber" does not exist
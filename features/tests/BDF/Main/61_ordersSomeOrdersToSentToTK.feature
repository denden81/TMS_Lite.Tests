@MainBDF
@order
@test61
@statusOrder
Feature: Create some orders and move its status to sent to TK
    then delete them     

    Background:
        Given I log in as a user Administrator on homepage

    Scenario: Create some orders and move its status to sent to TK    
        When I click on this element "create_order_button"
		And  I add "some_order_to_sent_to_tk1_value" to the inputfields "order_number"
		And  I add "min_client_order_value" to the inputfields "client_order_number"
		And  I click on this element "order_date"
		And  I click on this element "twenty_date"
        And  I add "shippings_warehouse_value" to the inputfields "shipping_warehouse_order_card"
        And  I click on this element "confirm_shippings_warehouse"        
        And  I add "vnukovo_sold_to_value" to the inputfields "sold_to_order_card"
		And  I click on this element "confirm_sold_to"
        And  I click on this element "delivery_date"
		And  I click on this element "twenty_eight_date"
        And  I add "payer_order_value" to the inputfields "payer_field"
		And  I click on this button "save_order"
        And  I pause for 2000ms
        And  I click on this element "some_order_to_sent_to_tk1"
        And  I pause for 1000ms
        And  I scroll to this element "pallets_count"
        And  I add "4" to the inputfields "pallets_count"
        And  I add "444" to the inputfields "weight_kg"
        And  I add "4444" to the inputfields "order_amount_excluding_vat"
        And  I click on this button "save_order"
        And  I click on this button "return_order_page"
        When I click on this element "create_order_button"
        And  I add "some_order_to_sent_to_tk2_value" to the inputfields "order_number"
		And  I add "min_client_order_value" to the inputfields "client_order_number"
		And  I click on this element "order_date"
		And  I click on this element "twenty_date"
        And  I add "shippings_warehouse_value" to the inputfields "shipping_warehouse_order_card"
        And  I click on this element "confirm_shippings_warehouse"        
        And  I add "vnukovo_sold_to_value" to the inputfields "sold_to_order_card"
		And  I click on this element "confirm_sold_to"
        And  I click on this element "delivery_date"
		And  I click on this element "twenty_eight_date"
        And  I add "payer_order_value" to the inputfields "payer_field"
		And  I click on this button "save_order"
        And  I pause for 2000ms
        And  I click on this element "some_order_to_sent_to_tk2"
        And  I pause for 1000ms
        And  I scroll to this element "pallets_count"
        And  I add "5" to the inputfields "pallets_count"
        And  I add "555" to the inputfields "weight_kg"
        And  I add "5555" to the inputfields "order_amount_excluding_vat"
        And  I click on this button "save_order"
        And  I click on this button "return_order_page"
        When I click on this element "create_order_button"
        And  I add "some_order_to_sent_to_tk3_value" to the inputfields "order_number"
		And  I add "min_client_order_value" to the inputfields "client_order_number"
		And  I click on this element "order_date"
		And  I click on this element "twenty_date"
        And  I add "shippings_warehouse_value" to the inputfields "shipping_warehouse_order_card"
        And  I click on this element "confirm_shippings_warehouse"        
        And  I add "vnukovo_sold_to_value" to the inputfields "sold_to_order_card"
		And  I click on this element "confirm_sold_to"
        And  I click on this element "delivery_date"
		And  I click on this element "twenty_eight_date"
        And  I add "payer_order_value" to the inputfields "payer_field"
		And  I click on this button "save_order"
        And  I pause for 2000ms
        And  I click on this element "some_order_to_sent_to_tk3"
        And  I pause for 1000ms
        And  I scroll to this element "pallets_count"
        And  I add "6" to the inputfields "pallets_count"
        And  I add "666" to the inputfields "weight_kg"
        And  I add "6666" to the inputfields "order_amount_excluding_vat"
        And  I click on this button "save_order"
        And  I click on this button "return_order_page"
        When I click on this element "order_name_filter" 
        And  I add "sent_filter_order_name_value" to the inputfields "order_number"
        And  I pause for 3000ms
        And  I click on this element "third_checkbox_orders"
        And  I click on this element "second_checkbox_orders"
        And  I click on this element "first_checkbox_orders"
        And  I click on this button "confirm_order"
        And  I click on this element "ok_button"
        Then I expects that element "third_order_status_orders" contains the text "Подтвержден"
        Then I expects that element "second_order_status_orders" contains the text "Подтвержден"
        Then I expects that element "first_order_status_orders" contains the text "Подтвержден"
        And  I click on this button "create_shipping"
        And  I click on this element "ok_button"
        And  I click on this element "mo_choice_parametr"
        And  I scroll to this element "mo_transport_company"
        And  I click on this element "mo_transport_company"
        And  I click on this element "mo_new_value"
        And  I click on this element "tk_value_vesta"
        And  I click on this button "mo_save_update"
        And  I click on this button "order_sent_to_tk"
        And  I click on this button "ok_button"
        Then I expects that element "first_order_status_shipping" contains the text "Заявка отправлена в ТК"
        Then I expects that element "second_order_status_shipping" contains the text "Заявка отправлена в ТК"
        Then I expects that element "third_order_status_shipping" contains the text "Заявка отправлена в ТК"
        When I click on this button "order_remove_from_shipping"
        And  I click on this element "ok_button"
        When I click on this button "ellipsis_orders_down_page"
        And  I click on this button "order_roll_back_ellipsis"
        And  I click on this element "ok_button"
        And  I click on this element "delete_order_orders_page"
        And  I click on this button "ok_button"
        And  I expect this element "Loader" is not visible
        Then  I expects that element "some_order_to_sent_to_tk1" does not exist
        Then  I expects that element "some_order_to_sent_to_tk2" does not exist
        Then  I expects that element "some_order_to_sent_to_tk3" does not exist
@MainBDF
@order
@statusOrder
Feature: Order's status movement
    from order shipped to order lost and delete order

    Background:
        Given I log in as a user Administrator on homepage

    Scenario: Create order and move status of order to shipped then lost then delete order 
        Then I expects that element "shippedLostOrderNumbber" does not exist
        When I click on this element "create_order_button"
		And  I add "shipped_lost_order_value" to the inputfields "order_number"
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
        And  I click on this element "shippedLostOrderNumbber"
        And  I expect this element "Loader" is not visible
        When I expects that element "first_order" contains the text "Не проверен"
        And  I add "payer_order_value" to the inputfields "payer_field"
        And  I click on this button "save_order"
        And  I pause for 1000ms
        And  I expect this element "Loader" is not visible
        When I expects that element "first_order" contains the text "Создан"
        And  I click on this button "return_order_page"
        When I click on this element "order_name_filter" 
        And  I add "shipped_lost_order_value" to the inputfields "order_number"
        And  I click on this element "center_of_orders_page"
        And  I click on this button "order_checkbox"
        And  I click on this button "confirm_order"
        And  I click on this element "ok_button"
        And  I click on this element "shippedLostOrderNumbber"
        And  I expect this element "Loader" is not visible
        When I expects that element "first_order" contains the text "Подтвержден"
        And  I click on this button "return_order_page"
        When I click on this element "order_name_filter" 
        And  I add "shipped_lost_order_value" to the inputfields "order_number"
        And  I click on this element "center_of_orders_page"
        And  I click on this button "order_checkbox"
        And  I click on this button "create_shipping"
        And  I click on this element "ok_button"
        And  I click on this element "shippedLostOrderNumbber"
        And  I expect this element "Loader" is not visible
        When I expects that element "first_order" contains the text "В перевозке"
        And  I click on this button "return_order_page"
        When I click on this element "order_name_filter" 
        And  I add "shipped_lost_order_value" to the inputfields "order_number"
        And  I click on this element "center_of_orders_page"
        And  I click on this button "order_checkbox"
        And  I click on this button "order_shipped"
        And  I click on this element "ok_button"
        And  I click on this element "shippedLostOrderNumbber"
        And  I expect this element "Loader" is not visible
        When I expects that element "first_order" contains the text "Отгружен"
        And  I click on this button "return_order_page"
        When I click on this element "order_name_filter" 
        And  I add "shipped_lost_order_value" to the inputfields "order_number"
        And  I click on this element "center_of_orders_page"
        And  I click on this button "order_checkbox"
        And  I click on this button "order_lost"
        And  I click on this element "ok_button"
        And  I click on this element "shippedLostOrderNumbber"
        And  I expect this element "Loader" is not visible
        When I expects that element "first_order" contains the text "Потерян"
        And  I click on this button "return_order_page"
        When I click on this element "order_name_filter" 
        And  I add "shipped_lost_order_value" to the inputfields "order_number"
        And  I click on this element "center_of_orders_page"
        And  I click on this button "order_checkbox"
        And  I click on this button "cancel_shipping"
        And  I click on this element "ok_button"
        And  I click on this button "order_roll_back"
        And  I click on this element "ok_button"
        And  I click on this element "delete_order_orders_page"
        And  I click on this button "ok_button"
        And  I expect this element "Loader" is not visible
        Then  I expects that element "shippedLostOrderNumbber" does not exist


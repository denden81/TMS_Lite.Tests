import {Given, Then, When} from '@cucumber/cucumber';

import clearInputField from '../support/action/clearInputField';
import clickElement from '../support/action/clickElement';
import closeLastOpenedWindow from '../support/action/closeLastOpenedWindow';
import deleteCookies from '../support/action/deleteCookies';
import dragElement from '../support/action/dragElement';
import focusLastOpenedWindow from '../support/action/focusLastOpenedWindow';
import handleModal from '../support/action/handleModal';
import moveTo from '../support/action/moveTo';
import pause from '../support/action/pause';
import pressButton from '../support/action/pressButton';
import scroll from '../support/action/scroll';
import selectOption from '../support/action/selectOption';
import selectOptionByIndex from '../support/action/selectOptionByIndex';
import setCookie from '../support/action/setCookie';
import setInputField from '../support/action/setInputField';
import setPromptText from '../support/action/setPromptText';
import LoginPage from "../pageobjects/login.page" ;
import LoginPass from "../pageobjects/login.pass";
import MainPage from "../pageobjects/main.page";
import checkContainsText from "../support/check/checkContainsText";
import closeAllButFirstTab from '../support/action/closeAllButFirstTab';

function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min)) + min;
}

const rnd = getRandomInt(1, 99999999);
const rnd2 = getRandomInt(1, 9999);

function Loaders(element) {
    let element1, element2, element3,element4;
    if (element === "Loader") {
        element = MainPage.Loader;
        element1 = MainPage.bigLoader;
        element2 = MainPage.loaderAuth;
        element3 = MainPage.OpenCloseOrderLoader;
        element4 = MainPage.messageAlert;
    }
    browser.pause(1000);
    $(element).waitForDisplayed({timeout: 30000, reverse: true});
    $(element1).waitForDisplayed({timeout: 30000, reverse: true});
    $(element2).waitForDisplayed({timeout: 30000, reverse: true});
    $(element3).waitForDisplayed({timeout: 30000, reverse: true});
    $(element4).waitForDisplayed({timeout: 30000, reverse: true});
    browser.pause(2000);
}

When(
    /^I (click|doubleclick) on the (link|button|element) "([^"]*)?"$/,
    clickElement
);

When(
    /^I (click) on this (link|button|element) "([^"]*)?"$/,
    (click, element, selector) => {
        let typeElement;
        if (selector === "submit") {
            typeElement = LoginPage.submit;
        }
        if (selector === "select_lang") {
            typeElement = LoginPage.select_lang;
        }
        if (selector === "Russian") {
            typeElement = LoginPage.russian;
        }
        if (selector === "American") {
            typeElement = LoginPage.american;
        }
        if (selector === "create_order_button") {
            typeElement = MainPage.CreateOrderButton;
        }
        if (selector === "Создать накладную") {
            typeElement = LoginPage.createOrderButton;
        }
        if (selector === "order_date") {
            typeElement = MainPage.OrderDate;
        }
        if (selector === "twenty_date") {
            typeElement = MainPage.TwentyDate;
        }
        if (selector === "twenty_eight_date") {
            typeElement = MainPage.TwentyEightDate;
        }
        if (selector === "eighteen_date") {
            typeElement = MainPage.EighteenDate;
        }
        if (selector === "confirm_sold_to") {
            typeElement = MainPage.ConfirmSoldTo;
        }
        if (selector === "confirm_shippings_warehouse") {
            typeElement = MainPage.ConfirmShippingsWarehouse;
        }
        if (selector === "save_order") {
            typeElement = MainPage.SaveOrder;
        }
        if (selector === "Кнопка Сохранить") {
            typeElement = MainPage.SaveOrder;
        }
        if (selector === "minOrderNumber") {
            typeElement = $(MainPage.MinOrderNumber);
        }
        if (selector === "statusOrderNumber") {
            typeElement = $(MainPage.StatusOrderNumber);
        }
        if (selector === "shippedLostOrderNumbber") {
            typeElement = $(MainPage.ShippedLostOrderNumbber);
        }
        if (selector === "fullReturnOrderNumbber") {
            typeElement = $(MainPage.FullReturnOrderNumbber);
        }
        if (selector === "orderCancelNumber") {
            typeElement = $(MainPage.OrderCancelNumber);
        }
        if (selector === "orderPickupNumber") {
            typeElement = $(MainPage.OrderPickupNumber);
        }
        if (selector === "orderCourierNumber") {
            typeElement = $(MainPage.OrderCourierNumber);
        }
        if (selector === "createdOrderNumber") {
            typeElement = $(MainPage.CreatedOrderNumber);
        }
        if (selector === "some_order_to_sent_to_tk1") {
            typeElement = $(MainPage.SomeOrderToSentToTK1);
        }
        if (selector === "some_order_to_sent_to_tk2") {
            typeElement = $(MainPage.SomeOrderToSentToTK2);
        }
        if (selector === "some_order_to_sent_to_tk3") {
            typeElement = $(MainPage.SomeOrderToSentToTK3);
        }
        if (selector === "ellipsis_order_page") {
            typeElement = $(MainPage.EllipsisOrderPage);
        }
        if (selector === "delete_order") {
            typeElement = $(MainPage.DeleteOrder);
        }
        if (selector === "confirm_delete_button") {
            typeElement = $(MainPage.ConfirmDelButton);
        }
        if (selector === "select_repr") {
            typeElement = $(MainPage.SelectRepr);
        }
        if (selector === "create_repr") {
            typeElement = $(MainPage.CreateRepr);
        }
        if (selector === "button_save") {
            typeElement = $(MainPage.ButtonSave);
        }
        if (selector === "repr_settings") {
            typeElement = $(MainPage.ReprSettings);
        }
        if (selector === "button_del") {
            typeElement = $(MainPage.ButtonDel);
        }
        if (selector === "confirm_del_button_repr") {
            typeElement = $(MainPage.ConfirmDelButtonRepr);
        }
        if (selector === "delivery_date") {
            typeElement = $(MainPage.DeliveryDate);
        }
        if (selector === "return_order_page") {
            typeElement = $(MainPage.ReturnOrderPage);
        }
        if (selector === "order_checkbox") {
            typeElement = $(MainPage.OrderCheckbox);
        }
        if (selector === "confirm_order") {
            typeElement = $(MainPage.ConfirmOrder);
        }
        if (selector === "ok_button") {
            typeElement = $(MainPage.OkButton);
        }
        if (selector === "create_shipping") {
            typeElement = $(MainPage.CreateShipping);
        }
        if (selector === "order_shipped") {
            typeElement = $(MainPage.OrderShipped);
        }
        if (selector === "order_delivered") {
            typeElement = $(MainPage.OrderDelivered);
        }
        if (selector === "order_archived") {
            typeElement = $(MainPage.OrderArchived);
        }
        if (selector === "order_roll_back") {
            typeElement = $(MainPage.OrderRollBack);
        }
        if (selector === "order_roll_back_ellipsis") {
            typeElement = $(MainPage.OrderRollBackEllipsis);
        }
        if (selector === "order_remove_from_shipping") {
            typeElement = $(MainPage.OrderRemoveFromShipping);
        }
        if (selector === "ellipsis_orders_down_page") {
            typeElement = $(MainPage.EllipsisOrdersDownPage);
        }
        if (selector === "order_roll_back_span") {
            typeElement = $(MainPage.OrderRollBackSpan);
        }
        if (selector === "delete_order_orders_page") {
            typeElement = $(MainPage.DeleteOrderOrdersPage);
        }
        if (selector === "order_lost") {
            typeElement = $(MainPage.OrderLost);
        }
        if (selector === "order_full_return") {
            typeElement = $(MainPage.OrderFullReturn);
        }
        if (selector === "cancel_shipping") {
            typeElement = $(MainPage.CancelShipping);
        }
        if (selector === "cancel_order") {
            typeElement = $(MainPage.CancelOrder);
        }
        if (selector === "order_name_filter") {
            typeElement = $(MainPage.OrderNameFilter);
        }
        if (selector === "first_checkbox_orders") {
            typeElement = $(MainPage.FirstCheckboxOrders);
        }
        if (selector === "second_checkbox_orders") {
            typeElement = $(MainPage.SecondCheckboxOrders);
        }
        if (selector === "third_checkbox_orders") {
            typeElement = $(MainPage.ThirdCheckboxOrders);
        }
        if (selector === "center_of_orders_page") {
            typeElement = $(MainPage.CenterOfOrdersPage);
        }
        if (selector === "mo_choice_parametr") {
            typeElement = $(MainPage.MoChoiceParametr);
        }
        if (selector === "mo_transport_company") {
            typeElement = $(MainPage.MoTransportCompany);
        }
        if (selector === "mo_new_value") {
            typeElement = $(MainPage.MoNewValue);
        }
        if (selector === "mo_tk_value_fm_logistic") {
            typeElement = $(MainPage.MoTkValueFmLogistic);
        }
        if (selector === "tk_value_vesta") {
            typeElement = $(MainPage.TkValueVesta);
        }
        if (selector === "tk_value_dialavtotrans") {
            typeElement = $(MainPage.TkValueDialavtotrans);
        }
        if (selector === "city_value_moscow") {
            typeElement = $(MainPage.CityValueMoscow);
        }
        if (selector === "city_value_ivanovo") {
            typeElement = $(MainPage.CityValueIvanovo);
        }
        if (selector === "city_value_volgograd") {
            typeElement = $(MainPage.CityValueVolgograd);
        }
        if (selector === "city_value_astrahan") {
            typeElement = $(MainPage.CityValueAstrahan);
        }
        if (selector === "city_value_moscow_with_first_space") {
            typeElement = $(MainPage.CityValueMoscowWithFirstSpace);
        }
        if (selector === "warehouse_name_aw99999") {
            typeElement = $(MainPage.WarehouseNameAW99999);
        }
        if (selector === "mo_save_update") {
            typeElement = $(MainPage.MoSaveUpdate);
        }
        if (selector === "order_sent_to_tk") {
            typeElement = $(MainPage.OrderSentToTK);
        }
        if (selector === "dictionaries") {
            typeElement = $(MainPage.Dictionaries);
        }
        if (selector === "tarrifs") {
            typeElement = $(MainPage.Tariffs);
        }
        if (selector === "dictionary_users") {
            typeElement = $(MainPage.DictionaryUsers);
        }
        if (selector === "dictionary_roles") {
            typeElement = $(MainPage.DictionaryRoles);
        }
        if (selector === "dictionary_articles") {
            typeElement = $(MainPage.DictionaryArticles);
        }
        if (selector === "dictionary_transport_companies") {
            typeElement = $(MainPage.DictionaryTransportCompanies);
        }
        if (selector === "dictionary_vehicle_types") {
            typeElement = $(MainPage.DictionaryVehicleTypes);
        }
        if (selector === "dictionary_piking_types") {
            typeElement = $(MainPage.DictionaryPikingTypes);
        }
        if (selector === "dictionary_warehouses") {
            typeElement = $(MainPage.DictionaryWarehouses);
        }
        if (selector === "dictionary_shipping_warehouses") {
            typeElement = $(MainPage.DictionaryShippingWarehouses);
        }
        if (selector === "dictionary_tonnages") {
            typeElement = $(MainPage.DictionaryTonnages);
        }
        if (selector === "dictionary_body_types") {
            typeElement = $(MainPage.DictionaryBodyTypes);
        }
        if (selector === "dictionary_document_types") {
            typeElement = $(MainPage.DictionaryDocumentTypes);
        }
        if (selector === "dictionary_create_button") {
            typeElement = (MainPage.DictionaryCreateButton);
        }
        if (selector === "dictionary_user_role_input") {
            typeElement = $(MainPage.DictionaryUserRoleInput);
        }
        if (selector === "dictionary_user_role_admin") {
            typeElement = $(MainPage.DictionaryUserRoleAdmin);
        }
        if (selector === "dictionary_active_checkbox") {
            typeElement = $(MainPage.DictionaryActiveCheckbox);
        }
        if (selector === "dictionary_first_filter") {
            typeElement = $(MainPage.DictionaryFirstFilter);
        }
        if (selector === "dictionary_second_filter") {
            typeElement = $(MainPage.DictionarySecondFilter);
        }
        if (selector === "dictionary_third_filter") {
            typeElement = $(MainPage.DictionaryThirdFilter);
        }
        if (selector === "dictionary_fourth_filter") {
            typeElement = $(MainPage.DictionaryFourthFilter);
        }
        if (selector === "dictionary_fifth_filter") {
            typeElement = $(MainPage.DictionaryFifthFilter);
        }
        if (selector === "dictionary_sixth_filter") {
            typeElement = $(MainPage.DictionarySixthFilter);
        }
        if (selector === "dictionary_ninth_filter") {
            typeElement = $(MainPage.DictionaryNinthFilter);
        }
        if (selector === "center_of_dictionary_page") {
            typeElement = $(MainPage.CenterOfDictionaryPage);
        }
        if (selector === "dictionary_auto_test_user") {
            typeElement = $(MainPage.DictionaryAutoTestUser);
        }
        if (selector === "dictionary_clear_filter") {
            typeElement = $(MainPage.DictionaryClearFilter);
        }
        if (selector === "dictionary_user_field_login") {
            typeElement = $(MainPage.DictionaryUserFieldLogin);
        }
        if (selector === "dictionaries_field_name") {
            typeElement = $(MainPage.DictionariesFieldName);
        }
        if (selector === "dictionaries_field_title") {
            typeElement = $(MainPage.DictionariesFieldTitle);
        }
        if (selector === "dictionary_article_field_nart") {
            typeElement = $(MainPage.DictionaryArticleFieldNart);
        }
        if (selector === "dictionary_tk_sending_to_pooling") {
            typeElement = $(MainPage.DictionaryTKSendingToPooling);
        }
        if (selector === "dictionary_role_watch_orders_privilegy") {
            typeElement = $(MainPage.DictionaryRoleWatchOrdersPrivilegy);
        }
        if (selector === "dictionary_auto_test_role") {
            typeElement = $(MainPage.DictionaryAutoTestRole);
        }
        if (selector === "dictionary_auto_test_document_type") {
            typeElement = $(MainPage.DictionaryAutoTestDocumentType);
        }
        if (selector === "dictionary_auto_test_vehicle_type") {
            typeElement = $(MainPage.DictionaryAutoTestVehicleType);
        }
        if (selector === "dictionary_auto_test_shipping_warehouse") {
            typeElement = $(MainPage.DictionaryAutoTestShippingWarehouse);
        }
        if (selector === "dictionary_auto_test_picking_type") {
            typeElement = $(MainPage.DictionaryAutoTestPickingType);
        }
        if (selector === "dictionary_auto_test_article") {
            typeElement = $(MainPage.DictionaryAutoTestArticle);
        }
        if (selector === "dictionary_auto_test_tk") {
            typeElement = $(MainPage.DictionaryAutoTestTK);
        }
        if (selector === "dictionary_auto_test_tonnage") {
            typeElement = $(MainPage.DictionaryAutoTestTonnage);
        }
        if (selector === "dictionary_auto_test_body_type") {
            typeElement = $(MainPage.DictionaryAutoTestBodyType);
        }
        if (selector === "not_send_to_pooling_radiobutton") {
            typeElement = $(MainPage.NotSendToPoolingRadioButton);
        }
        if (selector === "dictionaries_filter_no_att") {
            typeElement = $(MainPage.DictionariesFilterNoAtt);
        }
        if (selector === "tariff_tk_input") {
            typeElement = $(MainPage.TariffTKInput);
        }
        if (selector === "tariff_shipping_city_input") {
            typeElement = $(MainPage.TariffShippingCityInput);
        }
        if (selector === "tariff_delivery_city_input") {
            typeElement = $(MainPage.TariffDeliveryCityInput);
        }
        if (selector === "tariff_tariffication_method_input") {
            typeElement = $(MainPage.TariffTarifficationMethodInput);
        }
        if (selector === "tariffication_method_value_ftl") {
            typeElement = $(MainPage.TarifficationMethodValueFTL);
        }
        if (selector === "tariffication_method_value_ltl") {
            typeElement = $(MainPage.TarifficationMethodValueLTL);
        }
        if (selector === "tariffication_method_value_pooling") {
            typeElement = $(MainPage.TarifficationMethodValuePooling);
        }
        if (selector === "tariff_start_date_input") {
            typeElement = $(MainPage.TariffStartDateInput);
        }
        if (selector === "tariff_stop_date_input") {
            typeElement = $(MainPage.TariffStopDateInput);
        }
        if (selector === "filter_value_moscow") {
            typeElement = $(MainPage.FilterValueMoscow);
        }
        if (selector === "filter_value_volgograd") {
            typeElement = $(MainPage.FilterValueVolgograd);
        }
        if (selector === "filter_value_ltl") {
            typeElement = $(MainPage.FilterValueLTL);
        }
        if (selector === "tariff_delete_button") {
            typeElement = $(MainPage.TariffDeleteButton);
        }
        if (selector === "tariff_delivery_city_sort_field") {
            typeElement = $(MainPage.TariffDeliveryCitySortField);
        }
        if (selector === "tariff_tariffication_method_sort_field") {
            typeElement = $(MainPage.TariffTarifficationMethodSortField);
        }
        if (selector === "tariff_start_date_sort_field") {
            typeElement = $(MainPage.TariffStartDateSortField);
        }
        if (selector === "tariff_filter_tk_vesta") {
            typeElement = $(MainPage.TariffFilterTKVesta);
        }
        if (selector === "warehouse_delivery_method_input") {
            typeElement = $(MainPage.WarehouseDeliveryMethodInput);
        }
        if (selector === "warehouse_delivery_method_value_delivery") {
            typeElement = $(MainPage.WarehouseDeliveryMethodValueDelivery);
        }
        if (selector === "warehouse_delivery_method_value_courier") {
            typeElement = $(MainPage.WarehouseDeliveryMethodValueСourier);
        }
        if (selector === "warehouse_delivery_method_value_pickup") {
            typeElement = $(MainPage.WarehouseDeliveryMethodValuePickup);
        }
        if (selector === "dictionary_warehouse_field_client") {
            typeElement = $(MainPage.DictionaryWarehouseFieldClient);
        }
        if (selector === "dictionary_warehouse_field_delivery_method") {
            typeElement = $(MainPage.DictionaryWarehouseFieldDeliveryMethod);
        }
        if (selector === "dictionary_warehouse_field_address") {
            typeElement = $(MainPage.DictionaryWarehouseFieldAddress);
        }
        if (selector === "dictionary_warehouse_field_soldto") {
            typeElement = $(MainPage.DictionaryWarehouseFieldSoldto);
        }
        if (selector === "warehouse_delivery_method_filter_option_delivery") {
            typeElement = $(MainPage.WarehouseDeliveryMethodFilterOptionDelivery);
        }
        if (selector === "dictionary_shipping_warehouse_field_code") {
            typeElement = $(MainPage.DictionaryShippingWarehouseFieldCode);
        }
        if (selector === "dictionary_shipping_warehouse_field_name") {
            typeElement = $(MainPage.DictionaryWarehouseFieldName);
        }
        if (selector === "Перевозки") {
            typeElement = LoginPage.tabShippings;
        }
        if (selector === "Накладные") {
            typeElement = LoginPage.tabWaybills;
        }
        if (selector === "Создать перевозку") {
            typeElement = LoginPage.createShippingsButton;
        }
        if (selector === "Создать тариф") {
            typeElement = LoginPage.createTariffsButton;
        }
        if (selector === "Первый элемент в списке") {
            typeElement = LoginPage.firstElementInList;
        }
        if (selector === "Первый чекбокс") {
            typeElement = LoginPage.firstCheckboxInList;
        }
        if (selector === "Все чекбоксы") {
            typeElement = LoginPage.allCheckboxInList;
        }
        if (selector === "Доп опции МО") {
            typeElement = LoginPage.addOptionsMO;
        }
        if (selector === "logout") {
            browser.pause(2000);
            typeElement = LoginPage.arrowMainMenu;
            typeElement.waitForExist(20000);
            typeElement.click();
            browser.pause(2000);
            typeElement = LoginPage.buttonLogout;
        }
        if (selector === "Добавить материал") {
            typeElement = $(MainPage.confirmAddMaterial);
        }
        if (selector === "Перевозка в накладной") {
            typeElement = $(MainPage.shippingsInWaybills);
        }
        if (selector === "Список накладных в перевозке") {
            typeElement = $(MainPage.waybillsInShippings);
        }
        if (selector === "Номер перевозки") {
            typeElement = LoginPage.numberCarriageInHeader;
        }
        if (selector === "Опции смены статуса в перевозке") {
            typeElement = LoginPage.optionsChangeStatusShippings;
        }
        if (selector === "Опции смены статуса в накладной") {
            typeElement = LoginPage.optionsChangeStatusWaybills;
        }
        if (selector === "Добавить нового водителя") {
            typeElement = LoginPage.createNewDriver;
        }
        if (selector === "Добавить нового пользователя") {
            typeElement = LoginPage.createNewUser;
        }
        if (selector === "Добавить новый склад"|| selector === "Добавить новый элемент") {
            typeElement = LoginPage.createNewAny;
        }
        if (selector === "Выбрать представление") {
            typeElement = LoginPage.optionsSelectGrid;
        }
        if (selector === "Настройка представления") {
            typeElement = LoginPage.optionsSettingGrid;
        }
        if (selector === "Удалить тариф") {
            typeElement = LoginPage.buttonTrashInTariff;
        }
        if (selector === "Стрелка входа") {
            typeElement = LoginPage.searchArrowMailnesia;
        }
        typeElement.waitForExist(20000);
        typeElement.click();
        browser.pause(2000);
    }
);

When(
    /^I (add|set) "([^"]*)?" to the inputfield "([^"]*)?"$/,
    setInputField
);

When(
    /^I (add|set) "([^"]*)?" to the inputfields "([^"]*)?"$/,
    (add, value, element) => {
        let typeElement;
        if (element === "username") {
            typeElement = LoginPage.username;
        }
        if (element === "password") {
            typeElement = LoginPage.password;
        }
        if (value === "loginBdfAdmin") {
            value = LoginPass.loginBdfAdmin;
        }
        if (value === "loginBdfCoord") {
            value = LoginPass.loginBdfCoord;
        }
        if (value === "passwordBdf") {
            value = LoginPass.passwordBdf;
        }
        if (value === "loginPlusAdmin") {
            value = LoginPass.loginPlusAdmin;
        }
        if (value === "loginPlusCoord") {
            value = LoginPass.loginPlusCoord;
        }
        if (value === "passwordPlus") {
            value = LoginPass.passwordPlus;
        }
        if (value === "loginRoustAdmin") {
            value = LoginPass.loginRoustAdmin;
        }
        if (value === "loginRoustCoord") {
            value = LoginPass.loginRoustCoord;
        }
        if (value === "passwordRoust") {
            value = LoginPass.passwordRoust;
        }
        if (value === "loginSCJAdmin") {
            value = LoginPass.loginSCJAdmin;
        }
        if (value === "loginSCJCoord") {
            value = LoginPass.loginSCJCoord;
        }
        if (value === "passwordSCJ") {
            value = LoginPass.passwordSCJ;
        }
        if (value === "loginWrong") {
            value = LoginPass.loginWrong;
        }
        if (value === "passwordWrong") {
            value = LoginPass.passwordWrong;
        }
        if (value === "loginInactiveUser") {
            value = LoginPass.loginInactiveUser;
        }
        if (element === "order_number") {
            typeElement = MainPage.OrderNumber;
        }
        if (element === "Номер заказа") {
            typeElement = MainPage.orderNumber;
        }
        if (element === "Номер заказа клиента") {
            typeElement = MainPage.clientOrderNumber;
        }
        if (value === "min_order_value") {
            value = MainPage.MinOrderValue;
        }
        if (value === "order_value_without_client_order_number") {
            value = MainPage.OrderValueWithoutClientOrderNumber;
        }
        if (value === "Номер заказа клиента") {
            value = MainPage.OrderValueClient;
        }
        if (value === "order_value_without_order_date") {
            value = MainPage.OrderValueWithoutOrderDate;
        }
        if (value === "order_value_without_order_soldto") {
            value = MainPage.OrderValueWithoutOrderSoldto;
        }
        if (value === "status_order_value") {
            value = MainPage.StatusOrderValue;
        }
        if (value === "shipped_lost_order_value") {
            value = MainPage.ShippedLostOrderValue;
        }
        if (value === "full_return_order_value") {
            value = MainPage.FullReturnOrderValue;
        }
        if (value === "order_cancel_value") {
            value = MainPage.OrderCancelValue;
        }
        if (value === "order_pickup_value") {
            value = MainPage.OrderPickupValue;
        }
        if (value === "order_courier_value") {
            value = MainPage.OrderCourierValue;
        }
        if (value === "created_order_value") {
            value = MainPage.CreatedOrderValue;
        }
        if (value === "some_order_to_confirm1") {
            value = MainPage.SomeOrderToConfirm1;
        }
        if (value === "some_order_to_confirm2") {
            value = MainPage.SomeOrderToConfirm2;
        }
        if (value === "some_order_to_confirm3") {
            value = MainPage.SomeOrderToConfirm3;
        }
        if (value === "some_order_to_sent_to_tk1_value") {
            value = MainPage.SomeOrderToSentToTK1Value;
        }
        if (value === "some_order_to_sent_to_tk2_value") {
            value = MainPage.SomeOrderToSentToTK2Value;
        }
        if (value === "some_order_to_sent_to_tk3_value") {
            value = MainPage.SomeOrderToSentToTK3Value;
        }
        if (element === "client_order_number") {
            typeElement = MainPage.ClientOrderNumber;
        }
        if (value === "min_client_order_value") {
            value = MainPage.MinClientOrderValue;
        }
        if (element === "sold_to_order_card") {
            typeElement = MainPage.SoldToOrderCard;
        }
        if (element === "Склад доставки") {
            typeElement = MainPage.SoldToOrderCard;
        }
        if (element === "shipping_warehouse_order_card") {
            typeElement = MainPage.ShippingWarehouseOrderCard;
        }
        if (value === "astrahan_sold_to_value") {
            value = MainPage.AstrahanSoldToValue;
        }
        if (value === "vnukovo_sold_to_value") {
            value = MainPage.VnukovoSoldToValue;
        }
        if (value === "pickup_sold_to_value") {
            value = MainPage.PickupSoldToValue;
        }
        if (value === "courier_sold_to_value") {
            value = MainPage.СourierSoldToValue;
        }
        if (value === "shippings_warehouse_value") {
            value = MainPage.ShippingsWarehouseValue;
        }
        if (value === "repr_name_value") {
            value = MainPage.ReprNameValue;
        }
        if (element === "repr_name") {
            typeElement = MainPage.ReprName;
        }
        if (value === "payer_order_value") {
            value = MainPage.PayerOrderValue;
        }
        if (element === "payer_field") {
            typeElement = MainPage.PayerField;
        }
        if (element === "pallets_count") {
            typeElement = MainPage.PalletsCount;
        }
        if (element === "weight_kg") {
            typeElement = MainPage.WeightKg;
        }
        if (element === "order_amount_excluding_vat") {
            typeElement = MainPage.OrderAmountExcludingVAT;
        }
        if (value === "conf_filter_order_name_value") {
            value = MainPage.ConfFilterOrderNameValue;
        }
        if (value === "sent_filter_order_name_value") {
            value = MainPage.SentFilterOrderNameValue;
        }
        if (value === "status_order_value") {
            value = MainPage.StatusOrderValue;
        }
        if (value === "dictionary_user_value") {
            value = MainPage.DictionaryUserValue;
        }
        if (value === "dictionary_user_value1") {
            value = MainPage.DictionaryUserValue1;
        }
        if (element === "dictionary_field_login") {
            typeElement = MainPage.DictionaryFieldLogin;
        }
        if (element === "dictionary_field_name") {
            typeElement = MainPage.DictionaryFieldName;
        }
        if (element === "dictionary_field_email") {
            typeElement = MainPage.DictionaryFieldEmail;
        }
        if (element === "dictionary_field_userName") {
            typeElement = MainPage.DictionaryFieldUserName;
        }
        if (element === "dictionary_field_nart") {
            typeElement = MainPage.DictionaryFieldNart;
        }
        if (element === "dictionary_field_title") {
            typeElement = MainPage.DictionaryFieldTitle;
        }
        if (element === "dictionary_field_shelf_life") {
            typeElement = MainPage.DictionaryFieldShelfLife;
        }
        if (element === "dictionary_field_warehouse_name") {
            typeElement = MainPage.DictionaryFieldWarehouseName;
        }
        if (element === "dictionary_field_warehouse_soldto") {
            typeElement = MainPage.DictionaryFieldWarehouseSoldto;
        }
        if (element === "dictionary_field_warehouse_address") {
            typeElement = MainPage.DictionaryFieldWarehouseAddress;
        }
        if (value === "dictionary_field_shipping_warehouse_code_value") {
            value = MainPage.DictionaryFieldShippingWarehouseCodeValue;
        }
        if (element === "dictionary_field_shipping_warehouse_code") {
            typeElement = MainPage.DictionaryFieldShippingWarehouseCode;
        }
        if (value === "dictionary_role_value") {
            value = MainPage.DictionaryRoleValue;
        }
        if (value === "dictionary_role_value1") {
            value = MainPage.DictionaryRoleValue1;
        }
        if (value === "dictionary_document_type_value") {
            value = MainPage.DictionaryDocumentTypeValue;
        }
        if (value === "dictionary_document_type_value1") {
            value = MainPage.DictionaryDocumentTypeValue1;
        }
        if (value === "dictionary_article_nart_value") {
            value = MainPage.DictionaryArticleNartValue;
        }
        if (value === "dictionary_article_nart_value1") {
            value = MainPage.DictionaryArticleNartValue1;
        }
        if (value === "dictionary_tk_title_value") {
            value = MainPage.DictionaryTkTitleValue;
        }
        if (value === "dictionary_tk_title_value1") {
            value = MainPage.DictionaryTkTitleValue1;
        }
        if (value === "dictionary_vehicle_type_value") {
            value = MainPage.DictionaryVehicleTypeValue;
        }
        if (value === "dictionary_vehicle_type_value1") {
            value = MainPage.DictionaryVehicleTypeValue1;
        }
        if (value === "dictionary_picking_type_value") {
            value = MainPage.DictionaryPickingTypeValue;
        }
        if (value === "dictionary_picking_type_value1") {
            value = MainPage.DictionaryPickingTypeValue1;
        }
        if (value === "Bac Transport Coordinator") {
            value = LoginPass.loginBacardiCoord;
        }
        if (value === "passwordBacardi") {
            value = LoginPass.passwordBacardi;
        }
        if (value === "random number") {
            value = `Номер заказа ${rnd}`;
        }
        if (value === "random") {
            value = `${rnd2}`;
        }
        if (value === "random 2") {
            value = `${rnd2}2`;
        }
        if (value === "random number begin") {
            value = `000000000000000001Номер заказа ${rnd}`;
        }
        if (value === "random number end") {
            value = `яяяяяяяяяяяяяяяяя1Номер заказа ${rnd}`;
        }
        if (value === "random number begin SCJ") {
            value = `11111111111111111Номер заказа ${rnd}`;
        }
        if (value === "random number 2") {
            value = `Номер заказа ${rnd}2`;
        }
        if (value === "random number order") {
            value = `Номер заказа клиента${rnd}`;
        }
        if (value === "random number order 2") {
            value = `Номер заказа клиента${rnd}2`;
        }
        if (value === "random number SCJ in Sap") {
            value = `Номер заказа SJC${rnd}`;
        }
        if (value === "random number SCJ in Sap 2") {
            value = `Номер заказа SJC${rnd}2`;
        }
        if (value === "random delivery number") {
            value = `Номер доставки ${rnd}`;
        }
        if (value === "random delivery number 2") {
            value = `Номер доставки ${rnd}2`;
        }
        if (value === "random driver") {
            value = `Водитель ${rnd}`;
        }
        if (value === "random driver 2") {
            value = `Водитель ${rnd}2`;
        }
        if (value === "random user") {
            value = `Пользователь ${rnd}`;
        }
        if (value === "random warehouse") {
            value = `Склад доставки ${rnd}`
        }
        if (value === "random warehouse 2") {
            value = `Склад доставки ${rnd}2`
        }
        if (value === "random number tc") {
            value = `номер тс ${rnd}`;
        }
        if (element === "dictionary_field_name") {
            typeElement = MainPage.DictionaryFieldName;
        }
        if (element === "Кол-во паллет Предварительное") {
            typeElement = LoginPage.CountPalletInOrder;
        }
        if (element === "Кол-во моно-паллет") {
            typeElement = LoginPage.CountMonoPalletInOrder;
        }
        if (element === "Кол-во mix-паллет") {
            typeElement = LoginPage.CountMixPalletInOrder;
        }
        if (element === "Поле поиска по всем параметрам") {
            typeElement = LoginPage.FieldSearchOrdersGrid;
        }
        if (element === "Поле поиска по всем полям") {
            typeElement = LoginPage.fieldSearchAnyField;
        }
        if (element === "Номер заказа SCJ in Sap") {
            typeElement = LoginPage.fieldNumberSCJinSap;
        }
        if (element === "Предварительное кол-во коробок") {
            typeElement = LoginPage.CountBoxesInOrder;
        }
        if (element === "Плановый вес") {
            typeElement = LoginPage.CountWeightInOrder;
        }
        if (element === "Объем") {
            typeElement = LoginPage.CountVolumeInOrder;
        }
        if (element === "Номер доставки") {
            typeElement = LoginPage.deliveryNumber;
        }
        if (value === "dictionary_warehouse_name_value1") {
            value = MainPage.DictionaryWarehouseNameValue1;
        }
        if (value === "dictionary_warehouse_name_value2") {
            value = MainPage.DictionaryWarehouseNameValue2;
        }
        if (value === "dictionary_warehouse_name_value3") {
            value = MainPage.DictionaryWarehouseNameValue3;
        }
        if (value === "dictionary_shipping_warehouse_name_value") {
            value = MainPage.DictionaryShippingWarehouseNameValue;
        }
        if (value === "dictionary_tonnages_name_value") {
            value = MainPage.DictionaryTonnagesNameValue;
        }
        if (value === "dictionary_tonnages_name_value1") {
            value = MainPage.DictionaryTonnagesNameValue1;
        }
        if (value === "dictionary_body_type_name_value") {
            value = MainPage.DictionaryBodyTypeNameValue;
        }
        if (value === "dictionary_body_type_name_value1") {
            value = MainPage.DictionaryBodyTypeNameValue1;
        }
        if (value === "dictionary_shipping_warehouse_name_value1") {
            value = MainPage.DictionaryShippingWarehouseNameValue1;
        }
        if (value === "dictionary_warehouse_soldto_value") {
            value = MainPage.DictionaryWarehouseSoldToValue;
        }
        if (value === "dictionary_warehouse_sold_so_values_to_filter") {
            value = MainPage.DictionaryWarehouseSoldToValuesToFilter;
        }
        if (value === "dictionary_warehouse_soldto_value1") {
            value = MainPage.DictionaryWarehouseSoldToValue1;
        }
        if (value === "dictionary_warehouse_soldto_value2") {
            value = MainPage.DictionaryWarehouseSoldToValue2;
        }
        if (value === "dictionary_warehouse_soldto_value3") {
            value = MainPage.DictionaryWarehouseSoldToValue3;
        }
        if (value === "dictionary_warehouse_adress_value1") {
            value = MainPage.DictionaryWarehouseAddressToValue1;
        }
        if (value === "dictionary_warehouse_adress_value2") {
            value = MainPage.DictionaryWarehouseAddressToValue2;
        }
        if (value === "dictionary_warehouse_adress_value3") {
            value = MainPage.DictionaryWarehouseAddressToValue3;
        }
        if (value === "ivanovo_city_value") {
            value = MainPage.IvanovoCityValue;
        }
        if (value === "volgograd_city_value") {
            value = MainPage.VolgogradCityValue;
        }
        if (value === "astrahan_city_value") {
            value = MainPage.AstrahanCityValue;
        }
        if (element === "tariff_delivery_city_input") {
            typeElement = $(MainPage.TariffDeliveryCityInput);
        }
        if (element === "Материал артикула") {
            typeElement = $(MainPage.addMaterial);
        }
        if (value === "random article") {
            value = `артикул ${rnd}`;
        }
        if (element === "В поле поиска email") {
            typeElement = LoginPage.searchEmailMailnesia;
        }
        if (value === "testmail") {
            value = LoginPass.testMail;
        }
        if (value === "testmail1") {
            value = LoginPass.testMail1;
        }
        if (value === "testmail2") {
            value = LoginPass.testMail2;
        }
        if (value === "testmail3") {
            value = LoginPass.testMail3;
        }
        typeElement.waitForExist(20000);
        typeElement.setValue(value);
        browser.pause(1500);
    }
);

When(
    /^I add data "([^"]*)?" to the inputfields "([^"]*)?"$/,
    (value, element) => {
        let typeElement = $("//span[.='" + element + "']/..//..//input")
        if (value === "random driver") {
            value = `Водитель ${rnd}`;
        }
        if (value === "random driver 2") {
            value = `Водитель ${rnd}2`;
        }
        if (value === "random driver license") {
            value = `Лицензия ${rnd}`;
        }
        if (value === "random driver pasport") {
            value = `Паспорт ${rnd}`;
        }
        if (value === "random user") {
            value = `Пользователь ${rnd}`;
        }
        if (value === "random") {
            value = `${rnd2}`;
        }
        if (value === "random 2") {
            value = `${rnd2}2`;
        }
        if (value === "password") {
            value = LoginPass.password;
        }
        if (value === "email") {
            value = LoginPass.testMailMain;
        }
        if (value === "email2") {
            value = LoginPass.testMail;
        }
        if (value === "random grid") {
            value = `Представление ${rnd}`;
        }
        if (value === "random warehouse") {
            value = `Склад доставки ${rnd}`;
        }
        if (value === "random warehouse 2") {
            value = `Склад доставки ${rnd}2`;
        }
        if (value === "random shipto") {
            value = `ShipTo ${rnd}`;
        }
        if (value === "random shipto 2") {
            value = `ShipTo ${rnd}2`;
        }
        if (value === "random code warehouse") {
            value = `Код склада ${rnd}2`;
        }
        if (value === "random price") {
            value = `${rnd}`;
        }
        if (value === "random article") {
            value = `артикул ${rnd}`;
        }
        if (value === "random number tc") {
            value = `номер тс ${rnd}`;
        }
        if (value === "random name tc") {
            value = `марка тс ${rnd}`;
        }
        if (value === "random number tc 2") {
            value = `номер тс ${rnd}2`;
        }
        if (value === "random name tc 2") {
            value = `марка тс ${rnd}2`;
        }
        typeElement.waitForExist(20000);
        typeElement.setValue(value);
        browser.pause(1500);
    }
);

When(
    /^I expects that (button|element) "([^"]*)?"( not)* contains the text "([^"]*)?"$/,
    function (element, selector, boolean, text) {
        if (selector === "header") {
            selector = MainPage.Header;
        }
        if (selector === "adminProfile") {
            selector = MainPage.AdminProfile;
        }
        if (selector === "loginError") {
            selector = MainPage.LoginError;
        }
        if (selector === "first_order") {
            selector = MainPage.FirstOrder;
        }
        if (selector === "created_repr") {
            selector = MainPage.CreatedRepr;
        }
        if (selector === "first_order_status_orders") {
            selector = MainPage.FirstOrderStatusOrders;
        }
        if (selector === "second_order_status_orders") {
            selector = MainPage.SecondOrderStatusOrders;
        }
        if (selector === "third_order_status_orders") {
            selector = MainPage.ThirdOrderStatusOrders;
        }
        if (selector === "first_order_status_shipping") {
            selector = MainPage.FirstOrderStatusShipping;
        }
        if (selector === "second_order_status_shipping") {
            selector = MainPage.SecondOrderStatusShipping;
        }
        if (selector === "third_order_status_shipping") {
            selector = MainPage.ThirdOrderStatusShipping;
        }
        if (selector === "dictionaries_first_line_first_value") {
            selector = MainPage.DictionariesFirstLineFirstValue;
        }
        if (selector === "dictionaries_first_line_second_value") {
            selector = MainPage.DictionariesFirstLineSecondValue;
        }
        if (selector === "dictionaries_first_line_third_value") {
            selector = MainPage.DictionariesFirstLineThirdValue;
        }
        if (selector === "dictionaries_first_line_fourth_value") {
            selector = MainPage.DictionariesFirstLineFourthValue;
        }
        if (selector === "dictionaries_first_line_fifth_value") {
            selector = MainPage.DictionariesFirstLineFifthValue;
        }
        if (selector === "dictionaries_first_line_sixth_value") {
            selector = MainPage.DictionariesFirstLineSixthValue;
        }
        if (selector === "dictionaries_first_line_ninth_value") {
            selector = MainPage.DictionariesFirstLineNinthValue;
        }
        if (selector === "Грид Mailnesia") {
            selector = MainPage.gridMailnesia;
        }
        browser.pause(2000);
        //  isVisible(MainPage.Loader, true);
        checkContainsText(element, selector, text);
    }
);
When(
    /^I expects this (button|element) "([^"]*)?"( not)* contains the text "([^"]*)?"$/,
    function (element, selector, falseCase, text) {
        if (selector === "created_repr") {
            selector = MainPage.CreatedRepr;
        }
        browser.pause(1000);
        //  isVisible(MainPage.Loader, true);
        checkContainsText(element, selector, falseCase, text);
    }
);
When(
    /^I clear the inputfield "([^"]*)?"$/,
    clearInputField
);
When(
    /^I clear in the inputfield "([^"]*)?"$/,
    function (field) {
        if (field === "Поле поиска по всем параметрам") {
            field = LoginPage.FieldSearchOrdersGrid;
        }
        clearInputField(field);
        browser.pause(4000);
    }
);


When(
    /^I drag element "([^"]*)?" to element "([^"]*)?"$/,
    dragElement
);

When(
    /^I drags element "([^"]*)?" to element "([^"]*)?"$/,
    function (selector1, selector2) {
        if (selector1 === "repr_soldto_number") {
            selector1 = MainPage.ReprSoldtoNumber;
        }
        if (selector1 === "repr_delivery_adr") {
            selector1 = MainPage.ReprDeliveryAdr;
        }
        if (selector1 === "repr_shippings_adr") {
            selector1 = MainPage.ReprShippingsAdr;
        }
        if (selector1 === "repr_delivery_date") {
            selector1 = MainPage.ReprDeliveryDate;
        }
        if (selector2 === "repr_select_fields") {
            selector2 = MainPage.ReprSelectFields;
        }
        selector1.waitForExist(20000);
        selector2.waitForExist(20000);
        dragElement(selector1, selector2);
        browser.pause(1000);
    }
);

When(
    /^I pause for (\d+)ms$/,
    pause
);

When(
    /^I set a cookie "([^"]*)?" with the content "([^"]*)?"$/,
    setCookie
);

When(
    /^I delete the cookie "([^"]*)?"$/,
    deleteCookies
);

When(
    /^I press "([^"]*)?"$/,
    pressButton
);

When(
    /^I (accept|dismiss) the (alertbox|confirmbox|prompt)$/,
    handleModal
);

When(
    /^I enter "([^"]*)?" into the prompt$/,
    setPromptText
);

When(
    /^I scroll to element "([^"]*)?"$/,
    scroll
);

When(
    /^I scroll to this element "([^"]*)?"$/,
    function (selector) {
        if (selector === "pallets_count") {
            selector = MainPage.PalletsCount;
        }
        if (selector === "mo_transport_company") {
            selector = $(MainPage.MoTransportCompany);
        }
        selector.waitForExist(20000);
        scroll(selector);
        browser.pause(1000);
    }
);

When(
    /^I close the last opened (window|tab)$/,
    closeLastOpenedWindow
);

When(
    /^I focus the last opened (window|tab)$/,
    focusLastOpenedWindow
);

When(
    /^I select the (\d+)(st|nd|rd|th) option for element "([^"]*)?"$/,
    selectOptionByIndex
);

When(
    /^I select the option with the (name|value|text) "([^"]*)?" for element "([^"]*)?"$/,
    selectOption
);

When(
    /^I move to element "([^"]*)?"(?: with an offset of (\d+),(\d+))*$/,
    moveTo
);

When(
    /^I add shipping warehouses "([^"]*)?" and delivery warehouses "([^"]*)?"$/,
    function (shipWarehouses, deliveryWarehouses) {
        if (deliveryWarehouses === "random warehouse") {
            deliveryWarehouses = `Склад доставки ${rnd}`;
        }
        if (deliveryWarehouses === "random warehouse 2") {
            deliveryWarehouses = `Склад доставки ${rnd}2`;
        }
        //заполнение склада отгрузки
        LoginPage.selectShippingWarehouses.click();
        $(MainPage.footerSearchWarehouses).waitForExist(30000);
        Loaders("Loader");
        LoginPage.selectShippingWarehouses.waitForExist(30000);
        LoginPage.selectShippingWarehouses.setValue(shipWarehouses);
        browser.pause(1000);
        pressButton("Enter");
        browser.pause(1000);
        Loaders("Loader");
        $("//div[@class[contains(.,'item')] and contains(.,'" + shipWarehouses + "')]").waitForExist(90000);
        $("//div[@class[contains(.,'item')] and contains(.,'" + shipWarehouses + "')]").click();
        browser.pause(1000);
        //заполнение склада доставки
        LoginPage.selectDeliveryWarehouses.click();
        $(MainPage.footerSearchWarehouses).waitForExist(30000);
        Loaders("Loader");
        LoginPage.selectDeliveryWarehouses.waitForExist(30000);
        LoginPage.selectDeliveryWarehouses.setValue(deliveryWarehouses);
        browser.pause(1000);
        pressButton("Enter");
        browser.pause(1000);
        Loaders("Loader");
        $("//div[@class[contains(.,'item')] and contains(.,'" + deliveryWarehouses + "')]").waitForExist(90000);
        $("//div[@class[contains(.,'item')] and contains(.,'" + deliveryWarehouses + "')]").click();
        browser.pause(1000);
    });

When(
    /^I add "([^"]*)?" shipping date "([^"]*)?" and "([^"]*)?" delivery date "([^"]*)?"$/,
    function (textdata, shippingDate, textdata2, deliveryDate) {
        //заполнение даты отгрузки
        var date = new Date();
        let monthD, monthD2, datayy, datayy2, datadD, datadD2, zero, zero2, zeroM, zeroM2, typeElement, datadd, datadd2,
            monthEnd, dataEnd, monthEnd1, dataEnd1;
        typeElement = $("//span[.='" + textdata + "']/../..//div[@class='react-datepicker__input-container']/input");
        //нумерация с нуля, поэтому +1 к номеру месяца.
        monthD = (date.getMonth() + 1);
        datadD = date.getDate();
        datayy = date.getFullYear();
        browser.pause(3000);
        // преобразуем строковые данные в числовые
        shippingDate = Number(shippingDate);
        datadD = datadD + shippingDate;
        browser.pause(1000);
        monthEnd1 = (date.getMonth() + 1);
        dataEnd1 = 28;
        if (monthEnd1 === 1 || monthEnd1 === 3 || monthEnd1 === 5 || monthEnd1 === 7 || monthEnd1 === 8 || monthEnd1 === 10 || monthEnd1 === 12) {
            dataEnd1 = 31;
        }
        if (monthEnd1 === 4 || monthEnd1 === 6 || monthEnd1 === 9 || monthEnd1 === 11) {
            dataEnd1 = 30;
        }
        if (datadD >= dataEnd1) {
            datadD = datadD - dataEnd1
            monthD = monthD + 1
        }
        if (monthD > 12) {
            monthD = monthD - 12;
            datayy = datayy + 1;
        }
        //если день двузначный, то не добавляем 0
        zero = String("");
        zeroM = String("");
        if (datadD < 10) {
            zero = String("0")
        }
        //если месяц двузначный, то не добавляем 0
        if (monthD < 10) {
            zeroM = String("0")
        }
        //высчитываем итоговую дату отгрузки
        datadD = String(datadD);
        datadd = (zero + datadD + "." + zeroM + monthD + "." + datayy + "10" + "10");
        typeElement.setValue(datadd);
        browser.pause(1000);
        pressButton("Escape");
        browser.pause(1000);
        //заполнение даты доставки
        monthD2 = (date.getMonth() + 1);
        datadD2 = date.getDate();
        datayy2 = date.getFullYear();
        deliveryDate = Number(deliveryDate);
        typeElement = $("//span[.='" + textdata2 + "']/../..//div[@class='react-datepicker__input-container']/input");
        datadD2 = datadD2 + deliveryDate
        monthEnd = (date.getMonth() + 1);
        dataEnd = 28;
        if (monthEnd === 1 || monthEnd === 3 || monthEnd === 5 || monthEnd === 7 || monthEnd === 8 || monthEnd === 10 || monthEnd === 12) {
            dataEnd = 31;
        }
        if (monthEnd === 4 || monthEnd === 6 || monthEnd === 9 || monthEnd === 11) {
            dataEnd = 30;
        }
        if (datadD2 >= dataEnd) {
            datadD2 = datadD2 - dataEnd
            monthD2 = monthD2 + 1
        }
        if (monthD2 > 12) {
            monthD2 = monthD2 - 12;
            datayy2 = datayy2 + 1;
        }
        zero2 = String("");
        zeroM2 = String("");
        if (datadD2 < 10) {
            zero2 = String("0")
        }
        //если месяц двузначный, то не добавляем 0
        if (monthD2 < 10) {
            zeroM2 = String("0")
        }
        //высчитываем итоговую дату доставки
        datadD2 = String(datadD2);
        datadd2 = (zero2 + datadD2 + "." + zeroM2 + monthD2 + "." + datayy2 + "10" + "10");
        typeElement.setValue(datadd2);
        browser.pause(1000)
        pressButton("Escape");
        browser.pause(1000);
    }
);

When(
    /^I see element "([^"]*)?" in status "([^"]*)?"$/,
    function (element, status) {
        if (element === "random number") {
            element = `Номер заказа ${rnd}`;
        }
        if (element === "random number begin") {
            element = `000000000000000001Номер заказа ${rnd}`;
        }
        if (element === "random number end") {
            element = `яяяяяяяяяяяяяяяяя1Номер заказа ${rnd}`;
        }
        if (element === "random number 2") {
            element = `Номер заказа ${rnd}2`;
        }
        if (element === "random number begin SCJ") {
            element = `11111111111111111Номер заказа ${rnd}`;
        }
        $("//div[@class[contains(.,'column-overflow')] and contains(.,'" + element + "')]//..//..//..//..//..//div[@class[contains(.,'column-overflow')] and contains(.,'" + status + "')]").waitForExist(90000);
    });

When(
    /^I select "([^"]*)?" to the inputfields "([^"]*)?"$/,
    (value, element) => {
        let typeElement, typeElement2;
        typeElement = $("//span[.='" + element + "']/../..//div[@role='combobox']/input");
        typeElement2 = $("//span[.='" + element + "']/../..//i[@class='dropdown icon clear']");
        // если поле заполнено, то очистить его нажатием на крестик у поля.
        if (typeElement2.isDisplayed()) {
            typeElement2.click();
            browser.pause(2000);
        }
        typeElement.waitForExist(30000);
        typeElement.click();
        $(MainPage.footerSearchWarehouses).waitForExist(30000);
        Loaders("Loader");
        if (value === "random") {
            value = `${rnd}`;
        }
        if (value === "random driver") {
            value = `Водитель ${rnd}`;
        }
        if (value === "random driver 2") {
            value = `Водитель ${rnd}2`;
        }
        if (value === "random shipto") {
            value = `ShipTo ${rnd}`;
        }
        if (value === "random shipto 2") {
            value = `ShipTo ${rnd}2`;
        }
        typeElement.waitForExist(30000);
        typeElement.setValue(value);
        browser.pause(1000);
        pressButton("Enter");
        browser.pause(1000);
        Loaders("Loader");
        $("//div[@class[contains(.,'item')] and contains(.,'" + value + "')]").waitForExist(90000);
        $("//div[@class[contains(.,'item')] and contains(.,'" + value + "')]").click();
        browser.pause(2000);
    }
);
When(
    /^I select "([^"]*)?" to the inputfields "([^"]*)?" some fields$/,
    (value, element) => {
        let typeElement;
        typeElement = $("//*[.='" + element + "']/..//div/div[@role='combobox']/input");
        typeElement.click();
        $(MainPage.footerSearchWarehouses).waitForExist(30000);
        Loaders("Loader");
        typeElement.waitForExist(30000);
        typeElement.setValue(value);
        browser.pause(1000);
        pressButton("Enter");
        browser.pause(1000);
        Loaders("Loader");
        pressButton("Escape");
        browser.pause(1000);
    }
);

When(
    /^I select data "([^"]*)?" to the inputfields "([^"]*)?"$/,
    (data, element) => {
        var date = new Date();
        let monthD, datayy, datadD, zero, zeroM, typeElement, datadd;
        typeElement = $("//span[.='" + element + "']/../..//input");
        //нумерация с нуля, поэтому +1 к номеру месяца.
        monthD = (date.getMonth() + 1);
        datadD = date.getDate();
        datayy = date.getFullYear();
        browser.pause(3000);
        // преобразуем строковые данные в числовые
        data = Number(data);
        datadD = datadD + data;
        browser.pause(1000);
        //если день двузначный, то не добавляем 0
        zero = String("");
        zeroM = String("");
        if (datadD < 10) {
            zero = String("0")
        }
        //если месяц двузначный, то не добавляем 0
        if (monthD < 10) {
            zeroM = String("0")
        }
        //высчитываем итоговую дату отгрузки
        datadD = String(datadD);
        datadd = (zero + datadD + "." + zeroM + monthD + "." + datayy + "10" + "10");
        typeElement.setValue(datadd);
        browser.pause(1000);
        pressButton("Escape");
        browser.pause(1000);
    }
);

When(
    /^I click on this in (button|span|any|div|a|checkbox) "([^"]*)?"$/,
    (type, element) => {
        let typeElement;
        if (element === "random grid") {
            element = `Представление ${rnd}`;
        }
        if (element === "random warehouse") {
            element = `Склад доставки ${rnd}`;
        }
        if (element=== "random article") {
            element = `артикул ${rnd}`;
        }
        if (element === "random number tc") {
            element = `номер тс ${rnd}`;
        }
        if (element === "random user") {
            element = `Пользователь ${rnd}`;
        }
        if (element === "random warehouse 2") {
            element = `Склад доставки ${rnd}2`;
        }
        if (element === "random") {
            element = `${rnd2}`;
        }
        typeElement = $("//*[contains(text(),'" + element + "')]");
        if (type === "button") {
            typeElement = $("//button[contains(text(),'" + element + "')]");
        }
        if (type === "span") {
            typeElement = $("//span[contains(text(),'" + element + "')]");
        }
        if (type === "div") {
            typeElement = $("//div[contains(text(),'" + element + "')]");
        }
        if (type === "a") {
            typeElement = $("//a[contains(text(),'" + element + "')]");
        }
        if (type === "checkbox") {
            typeElement = $("//label[.='" + element + "']");
        }
        typeElement.waitForExist(20000);
        typeElement.click();
        browser.pause(2000);
    }
);

When(
    /^I select label "([^"]*)?" to the inputfields "([^"]*)?"$/,
    (value, element) => {
        let typeElement = $("//span[.='" + element + "']/../..//label[.='" + value + "']");
        typeElement.waitForExist(20000);
        typeElement.click();
        browser.pause(2000);
    }
);

When(
    /^I check "([^"]*)?" and answer "([^"]*)?"$/,
    (element, value) => {
        let typeElement, typeElement1, typeElement2;
        typeElement2 = $("//button[.='" + value + "']");
        browser.pause(1000);
        if (typeElement2.isDisplayed()) {
            browser.pause(1000);
            typeElement2.click();
            browser.pause(2000);
        }
        typeElement = $("//button[.='Да']");
        if (typeElement.isDisplayed()) {
            browser.pause(1000);
            typeElement.click();
            browser.pause(2000);
        }
        typeElement1 = $("//button[.='OK']");
        if (typeElement1.isDisplayed()) {
            browser.pause(1000);
            typeElement1.click();
            browser.pause(2000);
        }
        browser.pause(1000);
        Loaders("Loader");
        browser.pause(6000);

    });

When(
    /^I click in random element "([^"]*)?"$/,
    (selector) => {
        let typeElement, value;
        if (selector === "random number") {
            value = `Номер заказа ${rnd}`;
        }
        if (selector === "random number 2") {
            value = `Номер заказа ${rnd}2`;
        }
        typeElement = "//div[@id='scroll-grid-container']/div/table/tbody/tr/td[2]/div[@class='cell-grid']/div[1]/div[@class='link-cell']/div[.='" + value + "']"
        if (selector === "random driver") {
            value = `Водитель ${rnd}`;
            typeElement ="//table/tbody/tr/td[2]/div[text()='"+value+"']"
        }
        $(typeElement).waitForExist(30000);
        $(typeElement).click();
    }

);

When(
    /^thes (button|element) "([^"]*)?"( not)* contains( cost)* the text "([^"]*)?"$/,
    function containsText(element, selector, falseCase, cost, text) {
        let typeElement = ("//span[.='" + selector + "']/../..//div[@role='combobox']");
        if (cost) {
            typeElement = ("//span[.='" + selector + "']/../..//div[@class='ui input']");
        }
        if (selector === "Окно информация при создании новой накладной") {
            typeElement = MainPage.InfoWindow;
        }
        if (selector === "Грид заказов") {
            typeElement = MainPage.gridOrders;
        }
        if (selector === "Окно при создании новой перевозки") {
            typeElement = MainPage.gridShippings;
        }
        if (selector === "Окно при создании нового тарифа") {
            typeElement = MainPage.gridTariffs;
        }
        if (selector === "История в накладной") {
            typeElement = MainPage.historyWaybills;
        }
        if (selector === "История в перевозке") {
            typeElement = MainPage.historyShipping;
        }
        if (selector === "Список накладных в перевозке") {
            typeElement = MainPage.listWaybillsInShippings;
        }
        if (selector === "Карточка перевозки") {
            typeElement = MainPage.cardShippipngs;
        }
        if (text === "random number") {
            text = `Номер заказа ${rnd}`;
        }
        if (text === "random number 2") {
            text = `Номер заказа ${rnd}2`;
        }
        if (text === "random number order") {
            text = `Номер заказа клиента${rnd}`;
        }
        if (text === "random number order 2") {
            text = `Номер заказа клиента${rnd}2`;
        }
        if (text === "random number SCJ in Sap") {
            text = `Номер заказа SJC${rnd}`;
        }
        if (text === "random number SCJ in Sap 2") {
            text = `Номер заказа SJC${rnd}2`;
        }
        if (text === "random delivery number") {
            text = `Номер доставки ${rnd}`;
        }
        if (text === "random delivery number 2") {
            text = `Номер доставки ${rnd}2`;
        }
        if (text === "email") {
            text = LoginPass.testMailMain;
        }
        if (text === "email2") {
            text = LoginPass.testMail;
        }
        if (selector === "Грид Водитель") {
            typeElement = MainPage.gridDriver;
        }
        if (selector === "Грид Пользователи") {
            typeElement = MainPage.gridUsers;
        }
        if (selector === "Грид Справочников") {
            typeElement = MainPage.gridAny;
        }
        if (selector === "Грид Пользовательский") {
            typeElement = MainPage.gridRandomUsers;
        }
        if (text === "random driver") {
            text = `Водитель ${rnd}`;
        }
        if (text === "random driver 2") {
            text = `Водитель ${rnd}2`;
        }
        if (text === "random user") {
            text = `Пользователь ${rnd}`;
        }
        if (text === "random warehouse") {
            text = `Склад доставки ${rnd}`;
        }
        if (text === "random warehouse 2") {
            text = `Склад доставки ${rnd}2`;
        }
        if (text === "random") {
            text = `${rnd2}`;
        }
        if (text === "random 2") {
            text = `${rnd2}2`;
        }
        if (text === "random article") {
            text = `артикул ${rnd}`;
        }
        if (text === "random number tc 2") {
            text = `номер тс ${rnd}2`;
        }
        Loaders("Loader");
        browser.pause(2000);
        //$(typeElement).waitForExist(120000);
        //$(typeElement).getText(text);
        selector = $(typeElement);
        checkContainsText(element, selector, text);
    }
);
When(
    /^I delete material "([^"]*)?"$/,
    (value) => {
        let typeElement;
        typeElement = "//td[text()='" + value + "']/..//button[2]";
        $(typeElement).waitForExist(30000);
        $(typeElement).click();
        Loaders("Loader");
    }
);

When(
    /^I read number carriages "([^"]*)?" and add him in MO$/,
    function (entity) {
        let typeElement, value,numberCarriage2;
        //получаем номер перевозки из шапки перевозки и обрезаем первые 10 символов.
        let numberCarriage = LoginPage.numberCarriageInHeader.getText();
        numberCarriage2 = numberCarriage.slice(10);
        // переходим в накладные
        browser.url("/grid/orders");
        Loaders("Loader");
        value = `Номер заказа ${rnd}2`
        LoginPage.FieldSearchOrdersGrid.waitForExist(20000);
        LoginPage.FieldSearchOrdersGrid.setValue(value);
        pressButton("Enter");
        Loaders("Loader");
        // ставим галку у найденной накладной
        typeElement=LoginPage.firstCheckboxInList
        if (entity === "SCJ") {
            typeElement=LoginPage.firstCheckboxInListSCJ
        }
        typeElement.waitForExist(20000);
        typeElement.click();
        browser.pause(2000);
        // через мо нажимаем добавить в перевозку и заполняем номер перевозки
        LoginPage.panelMO.waitForExist(40000);
        LoginPage.addWaybillsinShippingsMO.click();
        LoginPage.fieldFormAddWaybilssInShippings.waitForExist(20000);
        LoginPage.numberFieldShippings.setValue(numberCarriage2);
        Loaders("Loader");
        $("//div[@class[contains(.,'item')] and contains(.,'" + numberCarriage2 + "')]").waitForExist(90000);
        $("//div[@class[contains(.,'item')] and contains(.,'" + numberCarriage2 + "')]").click();
        LoginPage.buttonOk.click();
    }
);

When(
    /^I read number carriages "([^"]*)?" and check him in grid$/,
    function (entity) {
        let numberCarriage, numberCarriage2, numberCarriage3,typeElement;
        //получаем номер перевозки из шапки сообщения и обрезаем первые 18 символов.
        numberCarriage = (LoginPage.numberCarriageInHeaderInMessage).getText();
        numberCarriage2 = numberCarriage.slice(18);
        // переходим в накладные
        $(MainPage.ConfirmDelButtonRepr).click();
        Loaders("Loader");
        // получаем номер перевозки из грида
        browser.pause(4000);
        if (entity==="Roust"||entity==="Bacardi") {
            typeElement=LoginPage.numberCarriageInHeaderInGrid
        }
        if (entity==="SCJ") {
            typeElement=LoginPage.numberCarriageInHeaderInGridSCJ
        }
        numberCarriage3 = (typeElement).getText();
        if (numberCarriage3 ==! numberCarriage2) {
            throw new Error("Shipping number is not correct")
        }
    }
);

When(
    /^I moving (waybills|shippings) status (forward|revert) "([^"]*)?"$/,
    function (note, type, text) {
        let selector, selectorGrid, typeElement, typeElement1, text2;
        selectorGrid = $(MainPage.createNewShippings);
        if (text === "В перевозке") {
            selector = LoginPage.buttonInTransportation
            selectorGrid = $(MainPage.createNewShippings)
            text2 = "В перевозке"
        }
        if (text === "Получен складом") {
            selector = LoginPage.statusReceivedbywarehouse
            selectorGrid = $(MainPage.statusReceivedbywarehouse)
            text2 = "Получен складом"
        }
        if (text === "Взят в подбор") {
            selector = LoginPage.statusPickingUpStarted
            selectorGrid = $(MainPage.statusPickingUpStarted)
            text2 = "Взят в подбор"
        }
        if (text === "Подбор завершен") {
            selector = LoginPage.statusPickingUpCompleted
            selectorGrid = $(MainPage.statusPickingUpCompleted)
            text2 = "Подбор завершен"
        }
        if (text === "Торг-12 получен") {
            selector = LoginPage.statusTorg12Received
            selectorGrid = $(MainPage.statusTorg12Received)
            text2 = "Торг-12 получен"
        }
        if (text === "Отменить заказ") {
            selector = LoginPage.statusCancelWaybill
            selectorGrid = $(MainPage.statusCancelWaybill)
            text2 = "Отменён"
        }
        if (text === "Расформирован") {
            selector = LoginPage.statusDisbanded
            selectorGrid = $(MainPage.statusDisbanded)
            text2 = "Расформирован"
        }
        if (text === "Заказ отгружен") {
            selector = LoginPage.statusWaybillShipped
            selectorGrid = $(MainPage.statusWaybillShipped)
            text2 = "Отгружен"
        }
        if (text === "Прибыл на выгрузку") {
            selector = LoginPage.statusArrivedToUnloading
            selectorGrid = $(MainPage.statusArrivedToUnloading)
            text2 = "Прибыл на выгрузку"
        }
        if (text === "Выгружен") {
            selector = LoginPage.statusUnloaded
            selectorGrid = $(MainPage.statusUnloaded)
            text2 = "Выгружен"
        }
        if (text === "Принят") {
            selector = LoginPage.statusAccepted
            selectorGrid = $(MainPage.statusAccepted)
            text2 = "Принят"
        }
        if (text === "Принят частично") {
            selector = LoginPage.statusAcceptedPartially
            selectorGrid = $(MainPage.statusAcceptedPartially)
            text2 = "Принят частично"
        }
        if (text === "Накладная отгружена") {
            selector = LoginPage.statusOfDeliveryNoteSnipped
            selectorGrid = $(MainPage.statusOfDeliveryNoteSnipped)
            text2 = "Отгружен"
        }
        if (text === "Заказ доставлен") {
            selector = LoginPage.statusOfDeliveryNoteDeliveredCourier
            selectorGrid = $(MainPage.statusOfDeliveryNoteDeliveredCourier)
            text2 = "Доставлен"
        }
        if (text === "Накладная доставлена") {
            selector = LoginPage.statusOfDeliveryNoteDelivered
            selectorGrid = $(MainPage.statusOfDeliveryNoteDelivered)
            text2 = "Доставлен"
        }
        if (text === "Перевести в архив") {
            selector = LoginPage.statusOfDeliveryNoteArchived
            selectorGrid = $(MainPage.statusOfDeliveryNoteArchived)
            text2 = "В архиве"
        }
        if (text === "Убрать из перевозки") {
            selector = LoginPage.deleteShippings
            selectorGrid = $(MainPage.deleteWaybillsInShippings)
            text2 = "Создан"
        }
        if (text === "Возврат") {
            selector = LoginPage.refund
            selectorGrid = $(MainPage.refund)
            text2 = "Возврат"
        }
        if (text === "Полный возврат") {
            selector = LoginPage.fullRefund
            selectorGrid = $(MainPage.fullRefund)
            text2 = "Полный возврат"
        }
        if (text === "Накладная потеряна") {
            selector = LoginPage.recordFactOfLoss
            selectorGrid = $(MainPage.recordFactOfLoss)
            text2 = "Потерян"
        }
        if (text === "Отменить накладную") {
            selector = LoginPage.cancelWaybills
            selectorGrid = $(MainPage.cancelWaybills)
            text2 = "Отменён"
        }
        if (text === "Отправить заявку в ТК") {
            selector = LoginPage.sendWaybillsInTK
            selectorGrid = $(MainPage.sendWaybillsInTK)
            text2 = "Заявка отправлена в ТК"
        }
        if (text === "Подтвердить заявку") {
            selector = LoginPage.confirmRequestInTK
            selectorGrid = $(MainPage.confirmRequestInTK)
            text2 = "Подтверждена ТК"
        }
        if (text === "Завершить перевозку") {
            selector = LoginPage.confirmRequestInTK
            selectorGrid = $(MainPage.confirmRequestInTK)
            text2 = "Подтверждена ТК"
        }
        if (text === "Завершить перевозку") {
            selector = LoginPage.completeShipping
            selectorGrid = $(MainPage.completeShipping)
            text2 = "Завершена"
        }
        if (text === "Выставить счет") {
            selector = LoginPage.bill
            selectorGrid = $(MainPage.bill)
            text2 = "Счёт выставлен"
        }
        if (text === "Перевести в архив") {
            selector = LoginPage.moveToArchive
            selectorGrid = $(MainPage.moveToArchive)
            text2 = "В архиве"
        }
        if (text === "Отменить отгрузку") {
            selector = LoginPage.cancelShipping
            selectorGrid = $(MainPage.cancelShipping)
            text2 = "Отложена"
        }
        if (text === "Возобновить отгрузку") {
            selector = LoginPage.resumeShipping
            selectorGrid = $(MainPage.resumeShipping)
            text2 = "Создана"
        }
        if (text === "Отменить перевозку") {
            selector = LoginPage.cancelShipping2
            selectorGrid = $(MainPage.cancelShipping2)
            text2 = "Отменена"
        }
        if (text === "Срыв поставки") {
            selector = LoginPage.disruptionOfShipping
            selectorGrid = $(MainPage.disruptionOfShipping)
            text2 = "Срыв"
        }
        if (text === "Отклонить заявку") {
            selector = LoginPage.rejectRequest
            selectorGrid = $(MainPage.rejectRequest)
            text2 = "Отклонена ТК"
        }
        if (text === "Отклонить заявку для выбора другой тк") {
            selector = LoginPage.rejectRequest
            selectorGrid = $(MainPage.rejectRequest)
            text2 = "Заявка отправлена в ТК"
        }
        if (type === 'revert') {
            if (note === "waybills") {
                selector = LoginPage.revertStatusWaybills
                selectorGrid = $(MainPage.revertStatusWaybills)
            }
            if (note === "shippings") {
                selector = LoginPage.revertStatusShipping
                selectorGrid = $(MainPage.revertStatusShipping)
            }
            if (text === "Откатить накладную в статус Принята") {
                text2 = "Принят"
            }
            if (text === "Откатить накладную в статус Выгружен") {
                text2 = "Выгружен"
            }
            if (text === "Откатить накладную в статус Прибыл на выгрузку") {
                text2 = "Прибыл на выгрузку"
            }
            if (text === "Откатить накладную в статус Отгружен") {
                text2 = "Отгружен"
            }
            if (text === "Откатить накладную в статус Торг-12 получен") {
                text2 = "Торг-12 получен"
            }
            if (text === "Откатить накладную в статус Подбор завершен") {
                text2 = "Подбор завершен"
            }
            if (text === "Откатить накладную в статус Взят в подбор") {
                text2 = "Взят в подбор"
            }
            if (text === "Откатить накладную в статус Получен складом") {
                text2 = "Получен складом"
            }
            if (text === "Откатить накладную в статус Доставлена") {
                text2 = "Доставлен"
            }
            if (text === "Откатить накладную в статус Отгружен") {
                text2 = "Отгружен"
            }
            if (text === "Откатить накладную в статус В перевозке") {
                text2 = "В перевозке"
            }
            if (text === "Откатить накладную в статус Создан") {
                text2 = "Создан"
            }
            if (text === "Откатить перевозку в статус Счет выставлен") {
                text2 = "Счёт выставлен"
            }
            if (text === "Откатить перевозку в статус Завершена") {
                text2 = "Завершена"
            }
            if (text === "Откатить перевозку в статус Подтверждена ТК") {
                text2 = "Подтверждена ТК"
            }
        }
        Loaders("Loader");
        LoginPage.optionsChangeStatusWaybills.waitForExist(30000);
        LoginPage.optionsChangeStatusWaybills.click();
        selector.waitForExist(30000);
        selector.click();
        Loaders("Loader");
        browser.pause(2000);
        selectorGrid.waitForExist(30000);
        if (selectorGrid.isDisplayed()) {
            typeElement = $("//button[.='Да']");
            if (typeElement.isDisplayed()) {
                browser.pause(1000);
                typeElement.click();
                browser.pause(2000);
            }
            typeElement1 = $("//button[.='OK']");
            if (typeElement1.isDisplayed()) {
                browser.pause(1000);
                typeElement1.click();
                browser.pause(2000);
            }
            browser.pause(1000);
            Loaders("Loader");
            browser.pause(6000);
        }
        selector = $(MainPage.headerWaybills);
        selector.waitForExist(30000);
        checkContainsText('element', selector, text2);
    }
);

When(
    /^I wait the element "([^"]*)?" to not be checked( in field "([^"]*)?")*$/,
    function (element, field) {
        let typeElement;
        if (element === "random number") {
            element = `Номер заказа ${rnd}`;
            typeElement = $("//div[@class[contains(.,'column-overflow')] and contains(.,'" + element + "')]");
        }
        if (field === 'Водитель') {
            typeElement = $("//div[@class[contains(.,'text')] and contains(.,'" + element + "')]");
        }
        typeElement.waitForExist({timeout: 20000, reverse: true});
    }
);

When(
    /^I set filter (checkbox )*(data )*"([^"]*)?" in field "([^"]*)?"$/,
    function (type1, type2, filter, field) {
        let typeElement, typeElement2,typeElement3,typeElement4, monthD, datadD, datayy, zero, zeroM, datadd,monthEnd, dataEnd;;
        typeElement = $("//span[.='" + field + "']/../..//..//i[@class='filter icon']");
        typeElement4 = $("//input[@placeholder='" + field + "']");
        typeElement.waitForExist(20000);
        typeElement.click();
        if (filter === "random number begin") {
            filter = `000000000000000001Номер заказа ${rnd}`;
        }
        if (filter === "random number end") {
            filter = `яяяяяяяяяяяяяяяяя1Номер заказа ${rnd}`;
        }
        if (filter === "random number begin SCJ") {
            filter = `11111111111111111Номер заказа ${rnd}`;
        }
        if (filter === "random warehouse") {
            filter = `Склад доставки ${rnd}`;
        }
        if (filter === "random code warehouse") {
            filter = `Код склада ${rnd}2`;
        }
        if (filter === "random") {
            filter = `${rnd2}`;
        }
        if (filter === "random 2") {
            filter = `${rnd2}2`;
        }
        if (filter === "random article") {
            filter = `артикул ${rnd}`;
        }
        if (filter === "random number tc") {
            filter = `номер тс ${rnd}`;
        }
        if (filter === "random name tc") {
            filter = `марка тс ${rnd}`;
        }
        if (filter === "random number tc 2") {
            filter = `номер тс ${rnd}2`;
        }
        if (filter === "random name tc 2") {
            filter = `марка тс ${rnd}2`;
        }
        if (filter === "random user") {
            filter = `Пользователь ${rnd}`;
        }
        if (filter === "random warehouse 2") {
            filter = `Склад доставки ${rnd}2`;
        }
        // заполняем поле поиска
        //если поле не чекбокс и не время, то заполняем этой веткой
        if (type1 || type2) {
        } else {
            typeElement4.waitForExist(20000);
            typeElement4.setValue(filter);
            browser.pause(2000);
        }
        //если поле время, то заполняем этой веткой
        if (type2) {
            var date = new Date();
            typeElement3 = $(MainPage.fieldDataSearchAny)
            $(MainPage.fieldDataSearchOnlyClick).click();
            browser.pause(2000);
            monthD = (date.getMonth() + 1);
            datadD = date.getDate();
            datayy = date.getFullYear();
            browser.pause(3000);
            // преобразуем строковые данные в числовые
            filter = Number(filter);
            datadD = datadD + filter;
            browser.pause(1000);
            monthEnd = (date.getMonth() + 1);
            dataEnd = 28;
            if (monthEnd === 1 || monthEnd === 3 || monthEnd === 5 || monthEnd === 7 || monthEnd === 8 || monthEnd === 10 || monthEnd === 12) {
                dataEnd = 31;
            }
            if (monthEnd === 4 || monthEnd === 6 || monthEnd === 9 || monthEnd === 11) {
                dataEnd = 30;
            }
            if (datadD >= dataEnd) {
                datadD = datadD - dataEnd
                monthD = monthD + 1
            }
            if (monthD > 12) {
                monthD = monthD - 12;
                datayy = datayy + 1;
            }
            //если день двузначный, то не добавляем 0
            zero = String("");
            zeroM = String("");
            if (datadD < 10) {
                zero = String("0")
            }
            //если месяц двузначный, то не добавляем 0
            if (monthD < 10) {
                zeroM = String("0")
            }
            //высчитываем итоговую дату отгрузки
            datadD = String(datadD);
            datadd = (zero + datadD + "." + zeroM + monthD + "." + datayy + "10" + "10");
            typeElement3.setValue(datadd);
            browser.pause(1000);
            pressButton("Escape");
            browser.pause(1000);
        }
        //если поле чекбокс, то кликаем дополнительно на чекбокс
        if (type1) {
            typeElement2 = $("//label[.='" + filter + "']");
            typeElement2.waitForExist(20000);
            typeElement2.click();
            Loaders("Loader");
            browser.pause(2000);
        }
        // кликаем на кнопку фильтра повторно чтобы он скрылся.
        if (type2) {
        } else {
            typeElement.waitForExist(20000);
            typeElement.click();
            browser.pause(2000);
        }
    });

When(
    /^I reload page$/,
    function () {
        browser.refresh();
    }
);

When(
    /^I log in as a "([^"]*)?" on homepage$/,
    function (elementL) {
        let elementLogin, selector1, selector2;
        if (elementL === "Bac Transport Coordinator") {
            elementLogin = LoginPass.loginBacardiCoord;
        }
        if (elementL === "Bac Transport Company") {
            elementLogin = LoginPass.loginBacardiTK;
        }
        if (elementL === "Roust Transport Coordinator") {
            elementLogin = LoginPass.loginRoustCoord;
        }
        if (elementL === "Roust Transport Company") {
            elementLogin = LoginPass.loginRoustTK;
        }
        if (elementL === "SCJ Transport Coordinator") {
            elementLogin = LoginPass.loginSCJCoord;
        }
        if (elementL === "SCJ Transport Company") {
            elementLogin = LoginPass.loginSCJTK;
        }
        if (elementL === "random user") {
            elementLogin = `Пользователь ${rnd}`;
        }
        browser.pause(1000);
        browser.url('/');
        browser.pause(3000);
        // Проверка что язык выставлен русский, если нет, сменить.
        selector1 = LoginPage.selectedRussian;
        if ((selector1).isDisplayed()) {
        } else {
            (LoginPage.select_lang).waitForExist(90000);
            (LoginPage.select_lang).click();
            browser.pause(2000);
            (LoginPage.russian).waitForExist(90000);
            (LoginPage.russian).click();
            browser.pause(2000);
            Loaders("Loader");
        }
        if ((LoginPage.usernameMain).isDisplayed()) {
        } else {
            browser.pause(2000);
            browser.refresh();
            Loaders("Loader");
            browser.pause(2000);
        }
        (LoginPage.usernameMain).waitForExist(90000);
        (LoginPage.usernameMain).setValue(elementLogin);
        (LoginPage.passwordMain).setValue(LoginPass.password);
        (LoginPage.submitButton).click();
        browser.pause(2000);
    }
);

When(
    /^I drag this field (in grid )*"([^"]*)?" to the inputfields "([^"]*)?"$/,
    (grid, selector1, selector2) => {
        if (grid) {
            clearInputField(LoginPage.searchFieldsInNewGrid);
            LoginPage.searchFieldsInNewGrid.setValue(selector1);
            browser.pause(1000);
            Loaders("Loader");
            selector1 = $("//div[@role='button']/div[.='" + selector1 + "']")
            if (selector2 === "Выбранные поля") {
                selector2 = $(MainPage.gridUsersSelectFields)
            }
            if (selector2 === "Доступные поля") {
                selector2 = $(MainPage.gridUsersAcceptFields)
            }
        }
        selector1.waitForExist(20000);
        selector2.waitForExist(20000);
        dragElement(selector1, selector2);
        browser.pause(1000);
        Loaders("Loader");
    }
);

When(
    /^I click sort on this (up|down) "([^"]*)?"$/,
    (type, field) => {
        let selector1, selector2;
        selector1 = $("//span[.='" + field + "']");
        (selector1).click();
        browser.pause(2000);
        if (type === "up") {
            selector2 = LoginPage.iconSortUp;
        }
        if (type === "down") {
            selector2 = LoginPage.iconSortDown;
        }
        //если сортировка сбита, то вернуть сортировку на требуемую
        for (var i = 0; i <= 2; i++) {
            if ((selector2).isDisplayed()) {
                break;
            } else {
                selector1.click();
                browser.pause(2000);
            }
        }
    }
);

When(
    /^I download file$/,
    function () {
        const path = require('path');
        // $("//div[@id='root']/div//div[@class='row']/div[2]/button[2]").click();
        browser.pause(3000);
        const path = "C:\\TMS.Tests\\tms-lite.tests\\1.xlsx"
        //const remoteFilePath = browser.uploadFile(filePath);
        //  $('.icon.upload').setValue(remoteFilePath);
//const fileInput = $('//div[@id=\'root\']/div//div[@class=\'row\']/div[2]/button[2]/i')
        //driver.findElement(fileInput).sendKeys(filePath);
        //pressButton()
        // browser.sendKeys("C:\\TMS.Tests\\tms-lite.tests\\1.xlsx");
        //const filePath = '/path/1.xlsx'
        //const remoteFilePath = browser.file(filePath)
        //      $('.icon.upload').setValue(remoteFilePath)
        //const remoteFilePath = browser.uploadFile(filePath);
        $("//div[@id='root']/div//div[@class='row']/div[2]/button[2]/i").setValue(path);
        browser.pause(2000);
    }
);
When(
    /^I check alert message$/,
    () => {
        let typeElement, typeElement2;
        typeElement = LoginPage.alertMessage;
        typeElement2 = LoginPage.alertMessageClose;
        if (typeElement.isDisplayed()) {
            browser.pause(1000);
            typeElement2.click();
            browser.pause(2000);
        }
    }
);
When(
    /^I set status fullrefund and returnReason "([^"]*)?" returnType "([^"]*)?" vat "([^"]*)?" comment "([^"]*)?"$/,
    function (reason, type, vat,comment) {
        let selector, typeElement, typeElement1,typeElement2,typeElement3,typeElement4,typeElement5, text2;
        selector = LoginPage.fullRefund
        text2 = "Полный возврат"
        Loaders("Loader");
        //выбираем опцию в меню полный возврат
        LoginPage.optionsChangeStatusWaybills.waitForExist(30000);
        LoginPage.optionsChangeStatusWaybills.click();
        selector.waitForExist(30000);
        selector.click();
        Loaders("Loader");
        browser.pause(2000);
        // выбираем причину возврата
        typeElement= LoginPage.returnReasonIcon
        typeElement1=$("//span[.='"+ reason +"']");
        typeElement.waitForExist(30000);
        typeElement.click();
        typeElement1.waitForExist(30000);
        typeElement1.click();
        //выбираем тип возврата
        typeElement2=LoginPage.returnTypeIcon
        typeElement3=$("//span[.='"+ type +"']");
        typeElement2.waitForExist(30000);
        typeElement2.click();
        typeElement3.waitForExist(30000);
        typeElement3.click();
        // заполняем стоимость перевозки и коммент
        LoginPage.returnCostWithoutVAT.waitForExist(30000);
        LoginPage.returnCostWithoutVAT.setValue(vat);
        LoginPage.returnComment.waitForExist(30000);
        LoginPage.returnComment.setValue(comment);
        // кликаем да или ок
        typeElement4 = $("//button[.='Да']");
        if (typeElement4.isDisplayed()) {
            browser.pause(1000);
            typeElement4.click();
            browser.pause(2000);
        }
        typeElement5 = $("//button[.='Ok']");
        if (typeElement5.isDisplayed()) {
            browser.pause(1000);
            typeElement5.click();
            browser.pause(2000);
        }
        // проверяем статус накладной
        selector = $(MainPage.headerWaybills);
        selector.waitForExist(30000);
        checkContainsText('element', selector, text2);
    }
);
When(
    /^I delete all mails in mailnesia$/,
    function () {
        if ($(MainPage.iconDeleteMailnesia).isDisplayed()) {
            $(MainPage.iconDeleteMailnesia).waitForExist(30000);
            LoginPage.iconDeleteMailnesia.click();
            browser.pause(2000);
            closeAllButFirstTab;
            browser.pause(2000);
            $(MainPage.iconYesDeleteMailnesia).waitForExist(30000);
            LoginPage.iconYesDeleteMailnesia.click();
            browser.pause(2000);
            closeAllButFirstTab;
            LoginPage.messageEmptyMailbox.waitForExist(40000);
        }
    }
);

import { Then } from '@cucumber/cucumber';

import checkClass from '../support/check/checkClass';
import checkContainsAnyText from '../support/check/checkContainsAnyText';
import checkIsEmpty from '../support/check/checkIsEmpty';
import checkContainsText from '../support/check/checkContainsText';
import checkCookieContent from '../support/check/checkCookieContent';
import checkCookieExists from '../support/check/checkCookieExists';
import checkDimension from '../support/check/checkDimension';
import checkEqualsText from '../support/check/checkEqualsText';
import checkFocus from '../support/check/checkFocus';
import checkInURLPath from '../support/check/checkInURLPath';
import checkIsOpenedInNewWindow from
    '../support/check/checkIsOpenedInNewWindow';
import checkModal from '../support/check/checkModal';
import checkModalText from '../support/check/checkModalText';
import checkNewWindow from '../support/check/checkNewWindow';
import checkOffset from '../support/check/checkOffset';
import checkProperty from '../support/check/checkProperty';
import checkFontProperty from '../support/check/checkFontProperty';
import checkSelected from '../support/check/checkSelected';
import checkTitle from '../support/check/checkTitle';
import checkTitleContains from '../support/check/checkTitleContains';
import checkURL from '../support/check/checkURL';
import checkURLPath from '../support/check/checkURLPath';
import checkWithinViewport from '../support/check/checkWithinViewport';
import compareText from '../support/check/compareText';
import isEnabled from '../support/check/isEnabled';
import isExisting from '../support/check/isExisting';
import isVisible from '../support/check/isDisplayed';
import waitFor from '../support/action/waitFor';
import waitForVisible from '../support/action/waitForDisplayed';
import checkIfElementExists from '../support/lib/checkIfElementExists';
import LoginPage from "../pageobjects/login.page";
import LoginPass from "../pageobjects/login.pass";
import MainPage from "../pageobjects/main.page";

function Loaders(element) {
    let element1,element2,element3;
    if (element === "Loader") {
        element = MainPage.Loader;
        element1 = MainPage.bigLoader;
        element2 = MainPage.loaderAuth;
        element3 = MainPage.OpenCloseOrderLoader;
    }
    browser.pause(1000);
    $(element).waitForDisplayed({ timeout: 10000,reverse: true });
    $(element1).waitForDisplayed({ timeout: 10000,reverse: true });
    $(element2).waitForDisplayed({ timeout: 10000,reverse: true });
    $(element3).waitForDisplayed({ timeout: 10000,reverse: true });
    browser.pause(2000);
}


Then(
    /^I expect that the title is( not)* "([^"]*)?"$/,
    checkTitle
);

Then(
    /^I expect that the title( not)* contains "([^"]*)?"$/,
    checkTitleContains
);

Then(
    /^I expect that element "([^"]*)?" does( not)* appear exactly "([^"]*)?" times$/,
    checkIfElementExists
);

Then(
    /^I expect that element "([^"]*)?" is( not)* displayed$/,
    isVisible
);

Then(
    /^I expect that element "([^"]*)?" becomes( not)* displayed$/,
    waitForVisible
);

Then(
    /^I expect that element "([^"]*)?" is( not)* within the viewport$/,
    checkWithinViewport
);

Then(
    /^I expect that element "([^"]*)?" does( not)* exist$/,
    isExisting
);

Then(
    /^I expect that element "([^"]*)?"( not)* contains the same text as element "([^"]*)?"$/,
    compareText
);

Then(
    /^I expect that (button|element) "([^"]*)?"( not)* matches the text "([^"]*)?"$/,
    checkEqualsText
);

Then(
    /^I expect that (button|element|container) "([^"]*)?"( not)* contains the text "([^"]*)?"$/,
    checkContainsText
);

Then(
    /^I expect that (button|element) "([^"]*)?"( not)* contains any text$/,
    checkContainsAnyText
);

Then(
    /^I expect that (button|element) "([^"]*)?" is( not)* empty$/,
    checkIsEmpty
);

Then(
    /^I expect that the url is( not)* "([^"]*)?"$/,
    checkURL
);

Then(
    /^I expect that the path is( not)* "([^"]*)?"$/,
    checkURLPath
);

Then(
    /^I expect the url to( not)* contain "([^"]*)?"$/,
    checkInURLPath
);

Then(
    /^I expect that the( css)* attribute "([^"]*)?" from element "([^"]*)?" is( not)* "([^"]*)?"$/,
    checkProperty
);

Then(
    /^I expect that the font( css)* attribute "([^"]*)?" from element "([^"]*)?" is( not)* "([^"]*)?"$/,
    checkFontProperty
);

Then(
    /^I expect that checkbox "([^"]*)?" is( not)* checked$/,
    checkSelected
);

Then(
    /^I expect that element "([^"]*)?" is( not)* selected$/,
    checkSelected
);

Then(
    /^I expect that element "([^"]*)?" is( not)* enabled$/,
    isEnabled
);

Then(
    /^I expect that cookie "([^"]*)?"( not)* contains "([^"]*)?"$/,
    checkCookieContent
);

Then(
    /^I expect that cookie "([^"]*)?"( not)* exists$/,
    checkCookieExists
);

Then(
    /^I expect that element "([^"]*)?" is( not)* ([\d]+)px (broad|tall)$/,
    checkDimension
);

Then(
    /^I expect that element "([^"]*)?" is( not)* positioned at ([\d+.?\d*]+)px on the (x|y) axis$/,
    checkOffset
);

Then(
    /^I expect that element "([^"]*)?" (has|does not have) the class "([^"]*)?"$/,
    checkClass
);

Then(
    /^I expect a new (window|tab) has( not)* been opened$/,
    checkNewWindow
);

Then(
    /^I expect the url "([^"]*)?" is opened in a new (tab|window)$/,
    checkIsOpenedInNewWindow
);

Then(
    /^I expect that element "([^"]*)?" is( not)* focused$/,
    checkFocus
);

Then(
    /^I wait on element "([^"]*)?"(?: for (\d+)ms)*(?: to( not)* (be checked|be enabled|be selected|be displayed|contain a text|contain a value|exist))*$/,
    {
        wrapperOptions: {
            retry: 3,
        },
    },
    waitFor
);
Then(
    /^I wait on elements "([^"]*)?"*$/,
    function (element) {
        let typeElement = $("//span[contains(text(),'" + element + "')]");
        if (element === "buttonEnter") {
            typeElement = LoginPage.buttonEnter;
        }
        if (element === "dictionary_create_button") {
            typeElement = MainPage.DictionaryCreateButton;
        }
        if (element === "Orders") {
            typeElement = LoginPage.gridOrders;
            browser.pause(3000)
        }
        if (element === "Колонка транспортная компания") {
            typeElement = LoginPage.columnTransportCompany;
            browser.pause(4000)
        }
        if (element === "Грид Тарифы") {
            typeElement = LoginPage.gridTariffs;
            browser.pause(4000)
        }
        if (element === "Панель массовых операций") {
            typeElement = LoginPage.panelMO;
            browser.pause(4000)
        }
        if (element === "Иконка карандаша") {
            typeElement = LoginPage.iconPencil;
            browser.pause(4000)
        }
        if (element === "Иконка корзины") {
            typeElement = LoginPage.iconPencil;
            browser.pause(4000)
        }
        typeElement.waitForExist(40000);
        browser.pause(2000);
       Loaders("Loader");
    }
);

Then(
    /^I expect that a (alertbox|confirmbox|prompt) is( not)* opened$/,
    checkModal
);

Then(
    /^I expect that a (alertbox|confirmbox|prompt)( not)* contains the text "([^"]*)?"$/,
    checkModalText
);
Then(
    /^I expects that element "([^"]*)?" does( not)* exist$/,
    function (element, falseCase) {
        if (element === "loginError") {
            element = MainPage.LoginError;
        }
        if (element === "adminProfile") {
            element = MainPage.AdminProfile;
        }
        if (element === "minOrderNumber") {
            element = MainPage.MinOrderNumber;
        }
        if (element === "createdOrderNumber") {
            element = MainPage.CreatedOrderNumber;
        }
        if (element === "order_without_order_number") {
            element = MainPage.OrderWithoutOrderNumber;
        }
        if (element === "order_without_client_order_number") {
            element = MainPage.OrderWithoutClientOrderNumber;
        }
        if (element === "order_without_order_date") {
            element = MainPage.OrderWithoutOrderDate;
        }
        if (element === "order_without_order_soldto") {
            element = MainPage.OrderWithoutOrderSoldto;
        }
        if (element === "statusOrderNumber") {
            element = MainPage.StatusOrderNumber;
        }
        if (element === "shippedLostOrderNumbber") {
            element = MainPage.ShippedLostOrderNumbber;
        }
        if (element === "fullReturnOrderNumbber") {
            element = MainPage.FullReturnOrderNumbber;
        }
        if (element === "orderCancelNumber") {
            element = MainPage.OrderCancelNumber;
        }
        if (element === "orderPickupNumber") {
            element = MainPage.OrderPickupNumber;
        }
        if (element === "orderCourierNumber") {
            element = MainPage.OrderCourierNumber;
        }
        if (element === "req_err_input_order") {
            element = MainPage.ReqErrorInputOrder;
        }
        if (element === "req_err_input_order_date") {
            element = MainPage.ReqErrorInputOrderDate;
        }
        if (element === "created_repr_soldto_number") {
            element = MainPage.CreatedReprSoldtoNumber;
        }
        if (element === "created_repr_delivery_adr") {
            element = MainPage.CreatedReprDeliveryAdr;
        }
        if (element === "created_repr_shippings_adr") {
            element = MainPage.CreatedReprShippingsAdr;
        }
        if (element === "some_order_to_sent_to_tk1") {
            element = MainPage.SomeOrderToSentToTK1;
        }
        if (element === "some_order_to_sent_to_tk2") {
            element = MainPage.SomeOrderToSentToTK2;
        }
        if (element === "some_order_to_sent_to_tk3") {
            element = MainPage.SomeOrderToSentToTK3;
        }
        if (element === "Поле поиска по всем параметрам") {
            element = MainPage.FieldSearchOrdersGrid;
        }
        browser.pause(1000);
        //  isVisible(MainPage.Loader, true);
        isExisting(element, falseCase);
    }
);

Then(
    /^I waits on element "([^"]*)?" to not exist( for 10000ms)*( in field "([^"]*)?")*$/,
    function (element, time, field) {
        let element1;
        element1 = ("//div[contains(text(),'" + element + "')]");
        if (field) {
            element1 = ("//span[.='" + field + "']/../..//div[contains(text(),'" + element + "')]");
        }
        if (element === "adminProfile") {
            element1 = MainPage.AdminProfile;
        }
        $(element1).waitForExist({timeout: 20000, reverse: true});
        browser.pause(1000);
    }
);
Then(
    /^I wait on mailnesia elements "([^"]*)?"*$/,
    function (element) {
        if (element === "testmail") {
            element = LoginPass.mailnesiaMail;
        }
        if (element === "testmail1") {
            element = LoginPass.mailnesiaMail1;
        }
        if (element === "testmail2") {
            element = LoginPass.mailnesiaMail2;
        }
        if (element === "testmail3") {
            element = LoginPass.mailnesiaMail3;
        }
        element.waitForExist(20000);
    }
);

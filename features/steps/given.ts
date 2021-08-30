import {Given, Then} from '@cucumber/cucumber';

import checkContainsAnyText from '../support/check/checkContainsAnyText';
import checkIsEmpty from '../support/check/checkIsEmpty';
import checkContainsText from '../support/check/checkContainsText';
import checkCookieContent from '../support/check/checkCookieContent';
import checkCookieExists from '../support/check/checkCookieExists';
import checkDimension from '../support/check/checkDimension';
import checkElementExists from '../support/check/checkElementExists';
import checkEqualsText from '../support/check/checkEqualsText';
import checkModal from '../support/check/checkModal';
import checkOffset from '../support/check/checkOffset';
import checkProperty from '../support/check/checkProperty';
import checkSelected from '../support/check/checkSelected';
import checkTitle from '../support/check/checkTitle';
import checkUrl from '../support/check/checkURL';
import closeAllButFirstTab from '../support/action/closeAllButFirstTab';
import compareText from '../support/check/compareText';
import isEnabled from '../support/check/isEnabled';
import isDisplayed from '../support/check/isDisplayed';
import openWebsite from '../support/action/openWebsite';
import setWindowSize from '../support/action/setWindowSize';
import LoginPage from "../pageobjects/login.page";
import LoginPass from "../pageobjects/login.pass";
import MainPage from "../pageobjects/main.page";
import loginAdmin from '../support/action/loginAdmin';

function Loaders(element) {
    let element1, element2, element3;
    if (element === "Loader") {
        element = MainPage.Loader;
        element1 = MainPage.bigLoader;
        element2 = MainPage.loaderAuth;
        element3 = MainPage.OpenCloseOrderLoader;
    }
    browser.pause(1000);
    $(element).waitForDisplayed({timeout: 10000, reverse: true});
    $(element1).waitForDisplayed({timeout: 10000, reverse: true});
    $(element2).waitForDisplayed({timeout: 10000, reverse: true});
    $(element3).waitForDisplayed({timeout: 10000, reverse: true});
    browser.pause(2000);
}

Given(
    /^I expect this element "([^"]*)?" is not visible$/,
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
        $(element).waitForDisplayed({timeout: 40000, reverse: true});
        $(element1).waitForDisplayed({timeout: 40000, reverse: true});
        $(element2).waitForDisplayed({timeout: 40000, reverse: true});
        $(element3).waitForDisplayed({timeout: 40000, reverse: true});
        $(element4).waitForDisplayed({timeout: 40000, reverse: true});
        browser.pause(2000);
    }
);

Given(
    /^I open the (url|site) "([^"]*)?"$/,
    openWebsite
);

Given(
    /^I open the sites "([^"]*)?"$/,
    (address) => {
        let url;
        if (address === "Майлнезия") {
            url = "https://mailnesia.com/";
        }
        if (address === "Майлнезия testmail") {
            url = "https://mailnesia.com/mailbox/testuser777777";
        }
        browser.url(url);
    }
);

Given(
    /^I have closed all but the first (window|tab)$/,
    closeAllButFirstTab
);
Given(
    /^the element "([^"]*)?" is( not)* displayed$/,
    isDisplayed
);

Given(
    /^the element "([^"]*)?" is( not)* enabled$/,
    isEnabled
);

Given(
    /^the element "([^"]*)?" is( not)* selected$/,
    checkSelected
);

Given(
    /^the checkbox "([^"]*)?" is( not)* checked$/,
    checkSelected
);

Given(
    /^there is (an|no) element "([^"]*)?" on the page$/,
    checkElementExists
);

Given(
    /^the title is( not)* "([^"]*)?"$/,
    checkTitle
);

Given(
    /^the element "([^"]*)?" contains( not)* the same text as element "([^"]*)?"$/,
    compareText
);

Given(
    /^the (button|element) "([^"]*)?"( not)* matches the text "([^"]*)?"$/,
    checkEqualsText
);

Given(
    /^the (button|element|container) "([^"]*)?"( not)* contains the text "([^"]*)?"$/,
    checkContainsText
);

Given(
    /^the (button|element) "([^"]*)?"( not)* contains any text$/,
    checkContainsAnyText
);

Given(
    /^the (button|element) "([^"]*)?" is( not)* empty$/,
    checkIsEmpty
);

Given(
    /^the page url is( not)* "([^"]*)?"$/,
    checkUrl
);

Given(
    /^the( css)* attribute "([^"]*)?" from element "([^"]*)?" is( not)* "([^"]*)?"$/,
    checkProperty
);

Given(
    /^the cookie "([^"]*)?" contains( not)* the value "([^"]*)?"$/,
    checkCookieContent
);

Given(
    /^the cookie "([^"]*)?" does( not)* exist$/,
    checkCookieExists
);

Given(
    /^the element "([^"]*)?" is( not)* ([\d]+)px (broad|tall)$/,
    checkDimension
);

Given(
    /^the element "([^"]*)?" is( not)* positioned at ([\d]+)px on the (x|y) axis$/,
    checkOffset
);

Given(
    /^I have a screen that is ([\d]+) by ([\d]+) pixels$/,
    setWindowSize
);
Given(
    /^a (alertbox|confirmbox|prompt) is( not)* opened$/,
    checkModal
);
Given(
    /^I log in as a user Administrator on homepage$/,
    loginAdmin
);



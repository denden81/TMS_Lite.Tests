/**
 * I log in as a user on homepage
 *
 */
import LoginPass from '../../pageobjects/login.pass';
import LoginPage from '../../pageobjects/login.page';
import MainPage from '../../pageobjects/main.page';
import checkContainsText from '../../support/check/checkContainsText';
import {click, element, text} from "webdriverio";


module.exports = () => {

    browser.pause(1000);
    browser.url('/');
    browser.pause(2000);
    (LoginPage.buttonEnter).waitForExist(5000);
    (LoginPage.select_lang).click();
    browser.pause(2000);
    (LoginPage.russian).click();
    browser.pause(2000);
    (LoginPage.username).setValue(LoginPass.loginBdfAdmin);
    (LoginPage.password).setValue(LoginPass.passwordBdf);
    (LoginPage.submit).click();
    checkContainsText(element, MainPage.AdminProfile, "auto_admin");
};

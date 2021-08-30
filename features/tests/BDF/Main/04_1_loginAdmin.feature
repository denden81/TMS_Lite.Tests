@MainBDF
@logincheckBDF
Feature: Auth by admin in BDF TMS system rus
    I open russian version of site, auth by admin
    and check that my profile after auth realy admin 

    Background:
        Given I open the url "/"
        And I wait on elements "buttonEnter"
        And  I click on this element "select_lang"
        And  I click on this element "Russian"

    Scenario Outline: Auth admin login
        When I add "<login>" to the inputfields "username"
        And  I add "<password>" to the inputfields "password"
        And  I click on this button "submit"
        Then I expects that element "header" contains the text "Перевозки"
		And  I expects that element "adminProfile" contains the text "auto_admin"
        Examples:
            | login         | password    |
            | loginBdfAdmin | passwordBdf |
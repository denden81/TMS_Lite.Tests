@MainBDF
@logincheckBDF
Feature: Auth by coordinator in BDF TMS system eng
    I open english version of site, auth by admin
    and check that my profile after auth realy coordinator 

    Background:
        Given I open the url "/"
        And I wait on elements "buttonEnter"
        And  I click on this element "select_lang"
        And  I click on this element "American"

    Scenario Outline: Auth coord login
        When I add "<login>" to the inputfields "username"
        And  I add "<password>" to the inputfields "password"
        And  I click on this button "submit"
        Then I expects that element "header" contains the text "Shippings"
		And  I expects that element "adminProfile" contains the text "auto_tk_coordinator"
        Examples:
            | login         | password    |
            | loginBdfCoord | passwordBdf |

@MainBDF
@logincheckBDF
Feature: Auth in BDF TMS system rus by innactive user
    I open russian version of site and true auth
    on the site by innactive user

    Background:
        Given I open the url "/"
        And I wait on elements "buttonEnter"
        And  I click on this element "select_lang"
        And  I click on this element "Russian"

    Scenario Outline: Attempt to auth inactive login
        When I add "<login>" to the inputfields "username"
        And  I add "<password>" to the inputfields "password"
        And  I click on this button "submit"
        When I expects that element "loginError" contains the text "Пользователь не найден или не активен"
		Then I expect this element "Loader" is not visible
		And  I expects that element "adminProfile" does not exist
        Examples:
            | login             | password    |
            | loginInactiveUser | passwordBdf |

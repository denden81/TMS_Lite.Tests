@MainBDF
@logincheckBDF
Feature: Failed auth in BDF TMS system eng
    I open english version of site and true auth
    on the site by wrong users

    Background:
        Given I open the url "/"
        And I wait on elements "buttonEnter"
        And  I click on this element "select_lang"
        And  I click on this element "American"

    Scenario Outline: Test login without password
        When I add "<login>" to the inputfields "username"
        And  I click on this button "submit"
		Then I expects that element "loginError" does exist
		And  I expect this element "Loader" is not visible
		And  I expects that element "adminProfile" does not exist
		
		Examples:
			| login         | password    |
			| loginBdfCoord | passwordBdf |
	
	Scenario Outline: Test login without login
        When I add "<password>" to the inputfields "password"
        And  I click on this button "submit"
		Then I expects that element "loginError" does exist
		And  I expect this element "Loader" is not visible
		And  I expects that element "adminProfile" does not exist
		
		Examples:
			| login         | password    |
			| loginBdfCoord | passwordBdf |
			
	Scenario Outline: Test login without login and password
        When  I click on this button "submit"
		Then I expect that element ".login-error" does exist
		Then I expects that element "loginError" does exist
		And  I expect this element "Loader" is not visible
		And  I expects that element "adminProfile" does not exist
		
		Examples:
			| login         | password    |
			| loginBdfCoord | passwordBdf |
			
	Scenario Outline: Test login with wrong login 
        When I add "<login>" to the inputfields "username"
        And  I add "<password>" to the inputfields "password"
        And  I click on this button "submit"
		Then I expects that element "loginError" does exist
		And  I expect this element "Loader" is not visible
		And  I expects that element "adminProfile" does not exist
		
		Examples:
			| login         | password    |
			| loginWrong    | passwordBdf |
			
	Scenario Outline: Test login with wrong password 
        When I add "<login>" to the inputfields "username"
        And  I add "<password>" to the inputfields "password"
        And  I click on this button "submit"
		Then I expects that element "loginError" does exist
		And  I expect this element "Loader" is not visible
		And  I expects that element "adminProfile" does not exist
		
		Examples:
			| login         | password      |
			| loginBdfCoord | passwordWrong |
			
	Scenario Outline: Test login with wrong login and password 
        When I add "<login>" to the inputfields "username"
        And  I add "<password>" to the inputfields "password"
        And  I click on this button "submit"
		Then I expects that element "loginError" does exist
		And  I expect this element "Loader" is not visible
		And  I expects that element "adminProfile" does not exist
		
		Examples:
			| login         | password      |
			| loginWrong    | passwordWrong |
	
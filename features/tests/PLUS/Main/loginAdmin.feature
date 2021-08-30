@MainPlus
Feature: Test button press
    As a developer
    I want to be able to test if a certain action is performed when a certain
    button is pressed

    Background:
        Given I open the url "/"
        And I wait on elements "buttonEnter"
        And  I click on this element "select_lang"
        And  I click on this element "Russian"

    Scenario Outline: Test login
        When I add "<login>" to the inputfields "username"
        And  I add "<password>" to the inputfields "password"
        And  I click on this button "submit"
        Then I expects that element "header" contains the text "Перевозки"
        Examples:
            | login         | password      |
            | loginPlusAdmin| passwordPlus  |

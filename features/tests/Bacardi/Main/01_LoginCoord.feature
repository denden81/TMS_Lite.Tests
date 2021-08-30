@MainBacardi
Feature: Auth by coordinator in BDF TMS system rus
    I open russian version of site, auth by admin
    and check that my profile after auth realy coordinator

    Scenario Outline: 01_LoginCoord
        Given I log in as a "<login coordinator>" on homepage
        Then I expects that element "header" contains the text "Перевозки"

        Examples:
            | login coordinator          |
            | Bac Transport Coordinator  |

Feature: Fieldnation e2e Test
    As a QA in Test
    I want to test if the fieldnation.com failed login screen displays an error

    Scenario: login with fake credentials
        Given I open the url "https://ui-test2.fndev.net/login"
        When  I add "marketionist" to the inputfield "#email"
        And   I add "1111" to the inputfield "#password"
        And   I click on the button "[data-nw-id='Log in']"
        Then  I wait on element "[data-nw-file='Alert']" to be visible

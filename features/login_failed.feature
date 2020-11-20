Feature: Login amazon failed
    Scenario: Login failed
        Given Open browser login
        Then Form login
        When Fill up email fail
        Then Failed validation
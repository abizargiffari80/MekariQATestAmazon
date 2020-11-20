Feature: Sign up amazon failed
    Scenario: Sign up failed
        Given Open browser
        Then Form sign up
        When Fill up sign up fail
        Then Verify fail
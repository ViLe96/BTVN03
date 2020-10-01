Feature: Test Login
    With this homework, I am going to test the login feature with 2 cases,
    one of thwm is successfully,
    another is fail.
    Scenario: Login Invalid
        Given Open page successfully
        When Enter user name '<user_name>' and password '<passwd>' but they are incorrect
        Then The login is unsuccessful and the message "Your username is invalid!\n×" is appeared.
        Examples:
            |user_name  |passwd  |
            | lvi       |123     |
            | lvi2      |456     |
            
    Scenario: Login Valid
        Given Open page successfully
        When Enter the correct password and username
        Then Successful login result and display the message "You logged into a secure area!\n×"
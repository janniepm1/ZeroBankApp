@login
  Feature: Login functionality

  Scenario:user logs in with valid credentials, Account summary should be displayed
    When user enter user name "username" and "password"
    Then user should be able to log in
    And account summary page should be displayed
  @negativelogin
  Scenario: user with wrong username and password should not be able to login
    When user logs in wrong "credentials" and wrong "password"
    Then user should not be able to log in
    And error message should "Login and/or password are wrong" should be displayed


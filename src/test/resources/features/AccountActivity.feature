@Account_activity
Feature: Account activity

  Background:
    Given user is in login page
    And user logs in with username "username and "password"
    When user clicks on "Account Activity" tab

    Scenario: Account Activity page title
    And verify that page title is "Zero - Account Activity"

      Scenario: verify account drop down menu options
        And verify options are available on account dropdown
        |Savings|
        |Checking|
        |Savings |
        |Loans   |
        |Credit Card|
        |Brokerage  |

        Scenario: verify transactions table columns names are displayed
          And verify transactions table options are displayed
          |Date|
          |Description|
          |Deposit    |
          |Withdrawal |

@account_summary
  Feature: Account summary display

    Background: Logging in to the web application
      Given user is in login page
      And user logs in with "username" and "password"

      Scenario: Account Summary Page Title
        Then Account Summary page shouold have title as Zero - Account Summary"

        Scenario: Account types
          And verifies that account types are displayed
          |Cash Accounts|
          |Investment Accounts|
          |Credit Accounts    |
          |Loan Accounts      |

          Scenario: Credit Accounts table
            And verifies that column names are displayed on Credit Accounts table
            |Account |
            |Credit Card|
            |Balance    |
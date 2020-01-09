@pay_bills
  Feature: Pay bills

    Background:
      Given user is in the login page
      And user logs in with "username" and "password"
      When user clicks on "Pay Bills" tab

      Scenario: verify page title
        Then verify that page title is "Zero - Pay Bills"

        Scenario: verify successfully made pay Operation message
          Then user selects "Wells Fago" as payee type and "Credit Card" as account type
          Then user enters "29300" as amount of money for payment and selects day as "10-10-2019"
          And verify pay operation message "The payment was successfully submitted." is displayed


          Scenario: Verify pop-up window notification when we left blank date or ammount
            Then user selects "Bank of America" as payee type and "Brokerage" as account type
            Then user enters "123" as amount of money for payment and selects day as ""
            And verify pay operation error message "Please fill out this fields." is displayed






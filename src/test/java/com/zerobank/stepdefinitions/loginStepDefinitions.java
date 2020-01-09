package com.zerobank.stepdefinitions;

import com.zerobank.pages.LoginPage;
import com.zerobank.utilities.ConfigurationReader;
import com.zerobank.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class loginStepDefinitions {

    LoginPage loginPage=new LoginPage();
    @When("user enter user name {string} and {string}")
    public void user_enter_user_name_and(String username, String password) {
        loginPage.setLogin(username,password);
    }
    @Then("user should be able to log in")
    public void user_should_be_able_to_log_in() {
        Driver.get().get(ConfigurationReader.get("url"));
    }

    @Then("account summary page should be displayed")
    public void account_summary_page_should_be_displayed() {
        // Write code here that turns the phrase above into concrete actions
        throw new cucumber.api.PendingException();
    }
    @When("user logs in wrong {string} and wrong {string}")
    public void user_logs_in_wrong_and_wrong(String string, String string2) {
        // Write code here that turns the phrase above into concrete actions
        throw new cucumber.api.PendingException();
    }

    @Then("user should not be able to log in")
    public void user_should_not_be_able_to_log_in() {
        // Write code here that turns the phrase above into concrete actions
        throw new cucumber.api.PendingException();
    }

    @Then("error message should {string} should be displayed")
    public void error_message_should_should_be_displayed(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new cucumber.api.PendingException();
    }


}

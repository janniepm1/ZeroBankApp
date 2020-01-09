package com.zerobank.pages;

import com.zerobank.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage {
    public LoginPage() {
        PageFactory.initElements(Driver.get(), this);
    }

    @FindBy(id = "signin_button")
    public WebElement signInButton;

    @FindBy(id = "user_login")
    public WebElement login;

    @FindBy(id = "user_password")
    public WebElement password;

    @FindBy(xpath = "//input[@name=\"submit\"]")
    public WebElement submitbutton;


    public void setLogin(String username1, String password1) {
        signInButton.click();
        login.sendKeys(username1);
        password.sendKeys(password1);
        submitbutton.click();


    }
}
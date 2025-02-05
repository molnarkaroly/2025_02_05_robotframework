c*** Settings ***
Library           SeleniumLibrary

*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Login
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    standard_user
    Input Password    //*[@id="password"]    secret_sauce
    Click Button    //*[@id="login-button"]

emptyUser
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    ${EMPTY}
    Input Password    //*[@id="password"]    secret_sauce
    Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Username is required
    Close Browser

emptyPass
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    standard_user
    Input Password    //*[@id="password"]    ${EMPTY}\n
    Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Password is required
    Close Browser

invalidBoth
    pen Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    ${EMPTY}
    Input Password    //*[@id="password"]    secret_sauce
    Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Username is required
    Close Browser

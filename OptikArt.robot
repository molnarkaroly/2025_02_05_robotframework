*** Settings ***
Library           Selenium2Library

*** Test Cases ***
login
    Open Browser    https://keprendeles.optikart.hu/login/?redirect_to=https%3A%2F%2Fkeprendeles.optikart.hu%2Fpquery%2F    firefox
    Input Text    //*[@id="user_login-5473"]    soma1
    Input Password    //*[@id="first_name-5473"]    Qwertz123456
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Password is incorrect. Please try again.
    Close Browser

loginGood
    Open Browser    https://keprendeles.optikart.hu/login/?redirect_to=https%3A%2F%2Fkeprendeles.optikart.hu%2Fpquery%2F    firefox
    Input Text    //*[@id="username-5474"]    karika
    Input Password    //*[@id="user_password-5474"]    Qwertz123456
    Click Button    //*[@id="um-submit-btn"]
    Close Browser

loginGoodTen
    FOR    ${i}    IN RANGE    10
        Open Browser    https://keprendeles.optikart.hu/login/?redirect_to=https%3A%2F%2Fkeprendeles.optikart.hu%2Fpquery%2F    firefox
        Input Text    //*[@id="username-5474"]    karika
        Input Text    //*[@id="user_password-5474"]    Qwertz123456
        Click Button    //*[@id="um-submit-btn"]
        Close Browser
    END

registt
    Open Browser    https://keprendeles.optikart.hu/register/    firefox
    Input Text    //*[@id="user_login-5473"]    a
    Input Text    //*[@id="first_name-5473"]    a
    Input Text    //*[@id="last_name-5473"]    a
    Input Password    //*[@id="user_password-5473"]    Qwertz123456
    Input Password    //*[@id="confirm_user_password-5473"]    Qwertz123456
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-user_login-5473"]    Your Felhasználónév must contain at least 3 characters

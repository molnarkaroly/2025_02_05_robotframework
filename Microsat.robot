*** Settings ***
Library           Selenium2Library

*** Test Case ***
Regist
    Open Browser    https://www.mikrosat.hu/    firefox
    Click Element    //*[@id="profile__btn"]/span
    Click Element    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/div[2]/div[1]/a
    Input Text    //*[@id="emai"]    molnar.karoly@diak.szbi-pg.hu
    Input Password    //*[@id="passwd1"]    Qwertz123.
    Input Password    //*[@id="passwd2"]    Qwertz123.
    Click Element    //*[@id="div_out_company_choose"]/div/div[2]/label
    Input Text    //*[@id="kap_mobile_sub"]    123456789
    Input Text    //*[@id="default_nev"]    Molnár Károly
    Input Text    //*[@id="default_irany"]    6100
    Input Text    //*[@id="default_varos"]    Kiskunfélegyháza
    Input Text    //*[@id="default_utca"]    XX. k. 48/852
    Click Button    //*[@id="cookie_alert_open"]/div/div/div[2]/div/div[2]/div/button
    Maximize Browser Window
    Click Button    //*[@id="button_reg"]

Login
    Open Browser    https://www.mikrosat.hu/    firefox
    Click Element    //*[@id="profile__btn"]/span
    Input Text    //*[@id="shop_user_login"]    molnar.karoly@diak.szbi-pg.hu
    Input Password    //*[@id="shop_pass_login"]    Qwertz123.
    Click Button    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/form/div[1]/button

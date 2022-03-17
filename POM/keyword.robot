*** Settings ***
Library    SeleniumLibrary
Variables    ../POM/locator.py

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    open browser    ${SiteUrl}    ${Browser}
    maximize browser window

Enter UserName
    [Arguments]    ${username}
    input text    ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]    ${password}
    input text    ${txt_loginUserpass}    ${password}

Click SignIn
    click button    ${btn_signIn}

Verify Successful Login
    title should be    Login: Mercury Tours

Close my Browsers
    close all browsers
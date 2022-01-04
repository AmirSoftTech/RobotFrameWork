*** Settings ***
Library    SeleniumLibrary
variables    ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    open browser    ${SiteUrl}    ${Browser}
    maximize browser window

Enter UserName
    [Arguments]    ${username}
    Input Text    ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_loginPassWord}    ${password}

Click SignIn
    click button    ${btn_signIN}

Verify Successfull Login
    title should be    Login: Mercury Tours

close my browsers
    close all browsers
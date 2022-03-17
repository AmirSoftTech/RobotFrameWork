*** Settings ***
Documentation    This is a login validation test
Library    SeleniumLibrary
Resource    ../POM/keyword.robot

*** Variables ***
${Browser}    Chrome
${SiteUrl}    http://demo.guru99.com/test/newtours/
${user}    tutorial
${pwd}    tutorial

*** Test Cases ***
LoginTest
    [Documentation]    Verify login validation test
    [Tags]    Functional
    Open my Browser    ${SiteUrl}    ${Browser}
    Enter UserName    ${user}
    Enter Password    ${pwd}

    sleep    3s
    Click SignIn

    sleep    3s
    Verify Successful Login
    Close my Browsers


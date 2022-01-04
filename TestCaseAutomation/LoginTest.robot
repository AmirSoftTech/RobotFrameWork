*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    http://demo.guru99.com/test/newtours/
${user}     tutorial
${pwd}    tutorial

*** Test Cases ***
LoginTest
    Open my Browser    ${SiteUrl}    ${Browser}
    Enter UserName    ${user}
    Enter Password    ${user}
    Click SignIn
    sleep    3s
    Verify Successfull Login
    close my browsers
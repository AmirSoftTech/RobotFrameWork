*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resource.robot

*** Variables ***
${url}    http://demo.guru99.com/test/newtours/
${browser}    chrome

*** Test Cases ***
TestCase1:
    ${PageTitle}=    LanuchBrouser    ${url}    ${browser}
    log to console    ${PageTitle}
    log    ${PageTitle}

    input text    name:userName    mercury
    input text    name:password     mercury
    click element    name:submit
    page should contain    	Login Successfully

    close browser

*** Keywords ***
LanuchBrouser
    [Arguments]    ${appurl}    ${appbrowser}
    open browser    ${appurl}    ${appbrowser}
    maximize browser window

    ${title}=    get title
    [Return]    ${title}




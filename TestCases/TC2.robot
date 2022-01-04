*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.saucedemo.com/
${browser}  chrome

*** Test Cases ***
Open my Browser
    open browser    ${url}    ${browser}
    maximize browser window

    close browser


*** Keywords ***
launchBrowser
    [Arguments]    ${appurl}    ${appbrowser}
    open browser    ${appurl}    ${appbrowser}
    maximize browser window
    set selenium speed    1s

    input text    name:userName     mercury
    input text    name:password     mercury
    sleep    3s
    close browser

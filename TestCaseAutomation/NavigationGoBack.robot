*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TestingInputBox
    open browser    https://www.google.com/    chrome
    ${loc}=    get location
    log to console    ${loc}

    open browser    https://www.bing.com/    chrome
    ${loc}=    get location
    log to console    ${loc}

    sleep    3
    go back
    #switch browser    1
    ${loc}=    get location
    log to console    ${loc}

    sleep    3
    close all browsers

*** Keywords ***

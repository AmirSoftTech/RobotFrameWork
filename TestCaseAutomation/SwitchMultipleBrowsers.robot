*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TestingInputBox
    open browser    https://www.google.com/    chrome
    maximize browser window

    open browser    https://www.bing.com/    chrome
    maximize browser window

    set selenium speed    1

    switch browser    1
    ${title}=    get title
    log to console    ${title}

    switch browser    2
    ${title}=    get title
    log to console    ${title}

    switch browser    1
    ${title}=    get title
    log to console    ${title}

    sleep    3
    close all browsers

*** Keywords ***

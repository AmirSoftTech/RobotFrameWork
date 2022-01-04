*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://demo.guru99.com/test/newtours/
${browser}    chrome

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window

    ${countlink}=    get element count    xpath://a
    log to console    ${countlink}

    FOR    ${i}    IN RANGE    1    ${countlink}+1
        ${LinkText}=    get text    xpath:(//a)[${i}]
        log to console   ${LinkText}
    END

    sleep    3
    close browser


*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  http://demo.guru99.com/test/newtours/
${browser}  chrome

*** Test Cases ***
For Loop Test
    open browser    ${url}   ${browser}
    maximize browser window

    ${countLink}=   get element count    xpath://a
    log to console    ${countLink}

    FOR    ${i}     IN RANGE     1   ${countLink}+1

        ${txtLink}=    get text    xpath:(//a)[${i}]
        log to console    ${txtLink}
    END

    close browser

*** Keywords ***

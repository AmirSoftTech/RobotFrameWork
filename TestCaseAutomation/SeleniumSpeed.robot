*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://demowebshop.tricentis.com/register
${browser}    chrome

*** Test Cases ***
TestingInputBox

    ${speed}=    get selenium speed
    log to console    ${speed}

    open browser    ${url}    ${browser}
    maximize browser window

    set selenium speed    1s
    select radio button    Gender    M
    select radio button    Gender    F

    input text    id:FirstName    Mohammad Amirul
    input text    id:LastName    Islam
    input text    id:Email    anhc@gmail.com
    input text    id:Password    davidjohn
    input text    id:ConfirmPassword    davidjohn

    ${speed}=    get selenium speed
    log to console    ${speed}
    close browser

*** Keywords ***

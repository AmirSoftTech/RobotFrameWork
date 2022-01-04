*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://demowebshop.tricentis.com/register
${browser}    chrome

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window

    ${implicittime}=    get selenium implicit wait
    log to console    ${implicittime}

    set selenium implicit wait    10 seconds

    ${implicittime}=    get selenium implicit wait
    log to console    ${implicittime}

    select radio button    Gender    M
    select radio button    Gender    F

    input text    id:FirstName1    M. Amirul
    input text    id:LastName    Islam
    input text    id:Email    anhc@gmail.com
    input text    id:Password    davidjohn
    input text    id:ConfirmPassword    davidjohn

    close browser

*** Keywords ***

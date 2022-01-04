*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://demowebshop.tricentis.com/register
${browser}    chrome

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window

    ${time}=    get selenium timeout    #Default time out 5s
    log to console    ${time}

    set selenium timeout    10s
    wait until page contains    Registera    #Default time out 5s

    select radio button    Gender    M
    select radio button    Gender    F

    input text    id:FirstName    M. Amirul
    input text    id:LastName    Islam
    input text    id:Email    anhc@gmail.com
    input text    id:Password    davidjohn
    input text    id:ConfirmPassword    davidjohn

    close browser

*** Keywords ***

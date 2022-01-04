*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://admin-demo.nopcommerce.com
${browser}    chrome

*** Keywords ***
Open my Browser
    open browser    ${url}    ${browser}
    maximize browser window

Close Browsers
    close all browsers

Open Login Page
    go to    ${url}

Input username
    [Arguments]     ${username}
    input text    id:Email    ${username}

Input password
    [Arguments]     ${password}
    input text    id:Password    ${password}

click login button
    click element    xpath://button[@type='submit']
#click logout link
    #click link    Logout

Error message should be visible
    page should contain    Login was unsuccessful

Dashboard page should be visible
    page should contain    Dashboard

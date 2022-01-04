*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
LaunchBrowser
    [Arguments]     ${url}    ${browser}
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:userName     mercury
    input text    name:password     mercury
    click button    name:submit
    sleep    3s
    close browser



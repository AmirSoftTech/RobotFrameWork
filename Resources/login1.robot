*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  chrome

*** Keywords ***
Open my Browser
    open browser    ${url}  ${browser}
    maximize browser window

Close my Browser
    close browser



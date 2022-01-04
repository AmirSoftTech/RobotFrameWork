*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  http://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
For Loop Test
    open browser    ${url}   ${browser}
    maximize browser window


    close browser

*** Keywords ***

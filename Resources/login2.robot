*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify login functionality home page
    input text      id:txtUsername    Admin
    input text      id:txtPassword    admin123
    #click button    name:Submit
    press keys    name:Submit   Return


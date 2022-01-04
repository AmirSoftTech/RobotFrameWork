*** Settings ***
Library    SeleniumLibrary
Documentation    This is the web automation test

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  chrome

*** Test Cases ***
MytestCase
    valid login

*** Keywords ***
valid login
    #Login from
    open browser    ${url}    ${browser}
    maximize browser window

    input text    id:txtUsername    Admin
    input text    id:txtPassword    admin123
    click element    name:Submit

    capture element screenshot  xpath://div[@id='group_1']    E:/aa/logo.png
    capture page screenshot  E:/aa/lo.png

    sleep    3s
    close all browsers

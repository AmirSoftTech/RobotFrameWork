#Radio Buttons, Check Boxes, Drop-Down & List Boxes
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.nopcommerce.com/register?returnUrl=%2F
${browser}    chrome

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window

    #Radio buttons
    sleep    2
    select radio button    Gender    M

    sleep    2
    select radio button    Gender    F

    #Drop-Down & List Boxes
    #Day
    sleep   2
    select from list by label    DateOfBirthDay    3

    #Months
    sleep    2
    select from list by index    DateOfBirthMonth   3

    sleep    2
    select from list by label    DateOfBirthMonth    April

    #Years
    sleep    2
    select from list by label    DateOfBirthYear    1915
    sleep    2
    select from list by index    DateOfBirthYear    2

    sleep    2
    scroll element into view    id:register-button

    #Checbox
    sleep    2
    select checkbox    Newsletter

    sleep    2
    unselect checkbox    Newsletter

    #Input value text field
    sleep    2
    input text    name:Password    1234456

    sleep    2
    input text    name:ConfirmPassword    1234456

    #Clear text field
    sleep    2
    clear element text    name:ConfirmPassword

    sleep   2
    clear element text    name:Password

    sleep    2
    input text    name:Password    1234456

    sleep    2
    input text    name:ConfirmPassword    1234456

    sleep    2
    close browser

*** Keywords ***

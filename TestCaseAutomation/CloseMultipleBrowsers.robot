*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
MyTestCase
    open browser    https://www.youtube.com/    chrome
    maximize browser window

    open browser    https://translate.google.com    chrome
    maximize browser window

    open browser    https://www.ebay.de/    chrome
    maximize browser window

    set selenium speed    1s
    input text    xpath://input[@id='gh-ac']    Herren Barcelona Heim Fußball Shirt
    select from list by label    _sacat    Sport
    select from list by index    _sacat    8
    select from list by label    _sacat    Sport
    click button    xpath://input[@id='gh-btn']

    close all browsers

*** Keywords ***

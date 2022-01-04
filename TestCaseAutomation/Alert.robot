*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window

    sleep    2
    click element    xpath://button[@onclick='myFunction()']
    handle alert    accept    # Meaning press ok button
    #handle alert    dismiss    # Meaning press cancel button
    #handle alert    leave
    #alert should be present    Press a button!

    sleep    3
    close browser

*** Keywords ***

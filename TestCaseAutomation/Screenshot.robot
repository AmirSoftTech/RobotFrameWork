#Screenshot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/
${browser}    chrome

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window

    input text    id:txtUsername    Admin
    input text    id:txtPassword    admin123
    click element    name:Submit

    capture page screenshot    C:/Users/amirulcse/PycharmProjects/Robotpractice/Results/logo.png
    capture element screenshot    xpath://canvas[@class='flot-overlay']    C:/Users/amirulcse/PycharmProjects/Robotpractice/Results/T.png

    sleep    3
    close browser

*** Keywords ***

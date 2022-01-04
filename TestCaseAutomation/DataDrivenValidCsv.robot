*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/DataDrivenLogin.robot
Library    DataDriver    ../TestData/LoginValid.csv

Suite Setup    Open my Browser
Suite Teardown    Close Browsers
Test Template    Valid login

*** Test Cases ***
LoginTestWithCsv using ${username} and ${password}

*** Keywords ***
Valid login
    [Arguments]    ${username}    ${password}
    Input username   ${username}
    Input password   ${password}
    click login button
    Dashboard page should be visible



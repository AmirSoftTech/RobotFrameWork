*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/DataDrivenLogin.robot
Library    DataDriver    ../TestData/LoginData.csv

Suite Setup    Open my Browser
Suite Teardown    Close Browsers
Test Template    Invalid login

*** Test Cases ***
LoginTestWithCsv using ${username} and ${password}


*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input username   ${username}
    Input password   ${password}
    click login button
    Error message should be visible

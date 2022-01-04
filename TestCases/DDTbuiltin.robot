*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/common.robot
#Resource    DDTdemo.robot
Library     DataDriver  ../TestData/database.csv

Suite Setup     Start TestCase
Suite Teardown  Finish TestCase
Test Template   Invalid Login scenarios

*** Test Cases ***
Verify logins with invalid credenticials    ${usename}   ${password}    ${msg_error}

*** Keywords ***
Invalid Login scenarios
    [Arguments]     ${usename}        ${password}  ${msg_error}
    input text      ${txt_usename}    ${usename}
    input text      ${txt_password}   ${password}
    click button    ${btn_login}
    Sleep    2s

    element should contain    ${txt_error}  ${msg_error}

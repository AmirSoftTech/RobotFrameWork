*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/DataDrivenLogin.robot
Suite Setup    Open my Browser
Suite Teardown    Close Browsers
Test Template    valid login

*** Test Cases ***       username               password
Right user Right pass    admin@yourstore.com    admin



*** Keywords ***
Valid login
    [Arguments]    ${username}    ${password}
    Input username   ${username}
    Input password   ${password}
    click login button
    Dashboard page should be visible

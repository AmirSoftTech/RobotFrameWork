*** Settings ***
Documentation    Login functionality
Resource    ../Resources/login1.robot
Resource    ../Resources/login2.robot
Resource    ../Resources/adminpage.robot

*** Test Cases ***
Login Functionality
    [Documentation]    verify login functionality
    [Tags]    functional

    Open my Browser
    Verify login functionality home page

Home page test
    [Documentation]    verify home page details
    [Tags]    homePage

    Admin Page
    Close my Browser
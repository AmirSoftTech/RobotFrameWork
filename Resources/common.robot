*** Settings ***
Library    SeleniumLibrary
Resource    ../TestCases/DDTdemo.robot
Library    SeleniumLibrary
Resource    ../TestCases/DDTdemo.robot
*** Keywords ***
Start TestCase
    open browser    ${url}  ${browser}
    maximize browser window
    sleep    2s

Finish TestCase
    close browser
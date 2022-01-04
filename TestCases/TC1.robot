*** Settings ***
Documentation    This is the web automation test
Library    SeleniumLibrary
Resource    TC2.robot

*** Variables ***
${url}  http://demo.guru99.com/test/newtours/
${browser}  chrome

*** Test Cases ***
MytestCase
    launchBrowser   ${url}    ${browser}





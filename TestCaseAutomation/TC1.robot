*** Settings ***
Documentation    This is my first automation test using robot framework!!
Library    SeleniumLibrary
Resource    TC2.robot

*** Variables ***
${url}  http://demo.guru99.com/test/newtours/
${browser}  chrome

*** Test Cases ***
MytestCase

    LaunchBrowser   ${url}    ${browser}



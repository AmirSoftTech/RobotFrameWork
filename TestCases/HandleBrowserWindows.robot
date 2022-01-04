*** Settings ***
Library    SeleniumLibrary
Documentation    This is the web automation test

*** Variables ***
${url}  https://www.youtube.com/
${browser}  chrome

${url1}  https://www.bing.com/
${browser1}  chrome

*** Test Cases ***
MytestCase
    valid login

*** Keywords ***
valid login
    open browser    ${url}  ${browser}
    maximize browser window

    sleep    2

    open browser    ${url1}  ${browser1}
    maximize browser window

    switch browser    1
    ${title1}=  get title
    log to console    ${title1}

    switch browser    2
    ${title2}=  get title
    log to console    ${title2}

    sleep    3s
    close all browsers

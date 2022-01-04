*** Settings ***
Library    SeleniumLibrary
Documentation    This is the web automation test

*** Variables ***
${url}  http://demo.automationtesting.in/Windows.html
#${url}  https://www.selenium.dev/
${browser}  chrome

*** Test Cases ***
MytestCase
    valid login

*** Keywords ***
valid login
    #Login from
    open browser    ${url}  ${browser}
    maximize browser window

    click element    xpath://*[@id="Tabbed"]/a/button
    switch window    title=Selenium
    ${a}=   get title
    log to console    ${a}

    sleep    1s
    click element    id:navbarDropdown

    sleep   1s
    mouse over    xpath://*[@id="main_navbar"]/ul/li[2]/div/a[1]

    sleep   1s
    mouse over    xpath://*[@id="main_navbar"]/ul/li[2]/div/a[2]

    sleep   1s
    mouse over    xpath://*[@id="main_navbar"]/ul/li[2]/div/a[3]

    sleep   1s
    mouse over    xpath://*[@id="main_navbar"]/ul/li[2]/div/a[4]

    sleep   1s
    mouse over    xpath://*[@id="main_navbar"]/ul/li[2]/div/a[4]

    sleep   1s
    mouse over    xpath://*[@id="main_navbar"]/ul/li[2]/div/a[5]

    sleep   3s
    mouse over    xpath://*[@id="main_navbar"]/ul/li[2]/div/a[6]

    sleep    2s
    click element   xpath://*[@id="main_navbar"]/ul/li[2]/div/a[6]

    sleep    3s
    close all browsers

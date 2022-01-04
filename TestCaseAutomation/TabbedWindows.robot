*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://demo.automationtesting.in/Windows.html
${browser}    chrome

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium speed    1s
    click element    xpath://*[@id="Tabbed"]/a/button
    switch window    title=Selenium    # Not select wondow, it will be switch window
    click element    xpath://span[normalize-space()='Downloads']
    #mouse over    xpath://*[@id="header"]/nav/div/div[2]/ul/li[4]/a
    #mouse down    xpath://*[@id="header"]/nav/div/div[2]/ul/li[4]/ul/li[1]/a
    #mouse down    xpath://*[@id="header"]/nav/div/div[2]/ul/li[4]/ul/li[2]/a
    #click element    xpath://*[@id="header"]/nav/div/div[2]/ul/li[4]/ul/li[3]/a

    sleep    3
    close browser

*** Keywords ***

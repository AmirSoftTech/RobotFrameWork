*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.countries-ofthe-world.com/flags-of-the-world.html
${browser}    chrome

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window

    execute javascript    window.scrollTo(0, 5000)

    sleep    3
    execute javascript    window.scrollTo(0, -5000)

    sleep    3
    scroll element into view    xpath://img[@alt='Flag of Germany']

    sleep    3
    execute javascript    window.scrollTo(0, document.body.scrollHeight)

    sleep    3s
    execute javascript    window.scrollTo(0, -document.body.scrollHeight)

    sleep    3
    close browser

*** Keywords ***

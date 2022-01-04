*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.countries-ofthe-world.com/flags-of-the-world.html
${browser}  chrome

*** Test Cases ***
ScrollingTest
    open browser    ${url}  ${browser}
    maximize browser window
    #execute javascript    window.scrollTo(0, 2500)
    #scroll element into view    xpath://img[@alt='Flag of Luxembourg']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)   # scroll down
    sleep    3s

    execute javascript    window.scrollTo(0,-document.body.scrollHeight)    #Scroll top

    sleep    3s
    execute javascript    window.scrollTo(0,document.body.scrollHeight)

    sleep    3s
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)


    sleep    3s
    close browser


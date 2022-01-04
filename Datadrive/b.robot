*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
${browser}    chrome

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window

    set selenium speed    1s
    select frame    packageListFrame
    click link    org.openqa.selenium
    unselect frame

    select frame    packageFrame
    click link    WebDriver
    unselect frame

    select frame    classFrame
    click link    Help
    unselect frame

    close browser



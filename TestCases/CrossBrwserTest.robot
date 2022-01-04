*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com
@{browser}  chrome  firefox

*** Test Cases ***
ScrollingTest
    FOR     ${i}    IN     @{browser}
    open browser    ${url}  ${i}
    close all browsers
    END


*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.ebay.com/
${browser}  chrome

*** Test Cases ***
Verifying basic search functionality for eBay
    [Documentation]    This test case verifies the basic search
    [Tags]    Function

    Start TestCase
    Verify Search Results
    close browser

*** Keywords ***
Start TestCase
    open browser    ${url}   ${browser}
    maximize browser window

Verify Search Results
    input text    xpath://*[@id="gh-ac"]    mobile
    press keys    xpath://input[@id='gh-btn']    [Return]
    page should contain    results for mobile

Finish TestCase
    close browser
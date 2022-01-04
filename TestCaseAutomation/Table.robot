*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://testautomationpractice.blogspot.com
${browser}    chrome

*** Test Cases ***
TableTest
    open browser    ${url}    ${browser}
    maximize browser window
    #${row}=    get text    xpath://table[@name='BookTable']/tbody/tr
    #${col}=    get text    //table[@name='BookTable']/tbody/tr/td[2]
    #log to console    ${row}
    #log to console    ${col}

    #Count the colum of the table
    ${a}=    get element count    xpath://table[@name='BookTable']/tbody/tr/td[1]
    log to console    ${a}

    FOR    ${i}    IN RANGE    1    ${a}+1
        ${LinkText}=    get text    xpath:(//table[@name='BookTable']/tbody/tr/td[1])[${i}]
        log to console   ${LinkText}
    END

    #Count the row of the table
    ${b}=    get element count    xpath://table[@name='BookTable']/tbody/tr
    log to console    ${b}

    FOR    ${i}    IN RANGE    1    ${b}+1
        ${LinkT}=    get text    xpath:(//table[@name='BookTable']/tbody/tr)[${i}]
        log to console   ${LinkT}
    END

    #Table's row and column value verify
    table column should contain    xpath://table[@name='BookTable']    3    Subject
    table row should contain    xpath://table[@name='BookTable']    5    Selenium
    table cell should contain    xpath://table[@name='BookTable']    6    3    JAVA
    table header should contain   xpath://table[@name='BookTable']    Author

    #${a}=    get text    xpath://table[@name='BookTable']/tbody/tr[3]/td[2]
    #log to console    ${a}

    close browser

*** Keywords ***

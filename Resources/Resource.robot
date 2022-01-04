*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
LanuchBrouser
    [Arguments]    ${appurl}    ${appbrowser}
    open browser    ${appurl}    ${appbrowser}
    maximize browser window
    ${title}=    get title
    [Return]    ${title}




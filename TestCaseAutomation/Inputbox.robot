#Practice website: https://demo.nopcommerce.com
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.nopcommerce.com/
${browser}    chrome

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window
    title should be    nopCommerce demo store

    sleep    2s
    click link    xpath://a[@class='ico-login']
    ${email_txt}    set variable    id:Email
    #${pass_txt}    set variable    id:Password

    element should be visible   ${email_txt}
    element should be enabled   ${email_txt}

    #element should be visible   ${pass_txt}
    #element should be enabled   ${pass_txt}

    input text    ${email_txt}  JohnDavid@gmail.com
    #input text    ${pass_txt}   JohnDavid@gmail.com

    sleep   5
    clear element text    ${email_txt}

    #sleep   5
    #clear element text    ${pass_txt}

    sleep    3
    close browser

*** Keywords ***

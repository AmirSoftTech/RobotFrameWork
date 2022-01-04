*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.saucedemo.com/
${browser}  chrome
#${browser}  firefox
${txt_usename}  id:user-name
${txt_password}    id:password
${btn_login}    id:login-button
${txt_error}    xpath://*[@id="login_button_container"]/div/form/div[3]/h3

*** Test Cases ***
Open my Browser
    open browser    ${url}    ${browser}
    maximize browser window

    close browser

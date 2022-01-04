*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Admin Page
    sleep   2s
    mouse over    xpath://a[@id='menu_admin_viewAdminModule']

    sleep    2s
    mouse over    xpath://a[@id='menu_admin_UserManagement']

    sleep    2s
    mouse over    xpath://a[@id='menu_admin_viewSystemUsers']

    sleep   2s
    click element    xpath://a[@id='menu_admin_viewSystemUsers']

    #select checkbox
    sleep    2s
    select checkbox    id:ohrmList_chkSelectAll

    sleep    2s
    unselect checkbox    id:ohrmList_chkSelectAll

    #scroll page up and down
    sleep    2s
    execute javascript    window.scrollTo(0,document.body.scrollHeight)

    sleep    2s
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)

    sleep    2s

    #page view scroll
    sleep    2s
    select checkbox    id:ohrmList_chkSelectAll

    sleep    2s
    unselect checkbox    id:ohrmList_chkSelectAll

    #User roll
    sleep   2s
    input text    id:searchSystemUser_userName  Amir

    sleep    2s
    select from list by label    searchSystemUser_userType  ESS

    sleep    2s
    input text    searchSystemUser_employeeName_empName  Islam

    sleep    2s
    select from list by label    searchSystemUser_status    Enabled

    sleep    2s
    click button    id:searchBtn

    sleep    5s
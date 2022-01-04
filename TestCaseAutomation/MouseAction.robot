#Right click, Double click, Drag & drop
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://swisnl.github.io/jQuery-contextMenu/demo.html
${browser}    chrome

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window

    #Right click action
    sleep    3s
    open context menu    xpath:/html/body/div/section/div/div/div/p/span

    #Double click action
    sleep    3s
    go to    http://testautomationpractice.blogspot.com
    maximize browser window
    double click element    xpath://button[normalize-space()='Copy Text']

    #Drag and drop
    go to  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window

    drag and drop    id:box1    id:box101
    drag and drop    id:box2    id:box102
    drag and drop    id:box3    id:box103
    drag and drop    id:box4    id:box104
    drag and drop    id:box5    id:box105
    drag and drop    id:box6    id:box106
    drag and drop    id:box7    id:box107

    drag and drop    id:box1    id:dropContent
    drag and drop    id:box2    id:dropContent
    drag and drop    id:box3    id:dropContent
    drag and drop    id:box4    id:dropContent
    drag and drop    id:box5    id:dropContent
    drag and drop    id:box6    id:dropContent
    drag and drop    id:box7    id:dropContent

    sleep    3s
    close all browsers

*** Keywords ***

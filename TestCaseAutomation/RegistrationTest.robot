*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    http://demo.guru99.com/test/newtours/
${user}     tutorial
${pwd}    tutorial

*** Test Cases ***
RegistrationTest
    Open my Browser    ${SiteUrl}    ${Browser}
    Click Register Link
    Enter FirstName    David
    Enter LastName    John
    Enter Phone    1234567890
    Enter Email    davidJohn@gmail.com
    Enter Address    Canada
    Enter City    Toronto
    Enter State    Bramption
    Enter Postal Code    L35 1E7
    Select Country    CANADA
    Enter User Name    johnxyz
    Enter Password    johnxyz
    Enter Confirmed Password    johnxyz
    Click Submit
    Verify Successful Registration
    close my browsers


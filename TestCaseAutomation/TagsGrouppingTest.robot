#Run command as follows:
#robot  --include=regression TestCaseAutomation\TagsGrouppingTest.robot
#robot  -i sanity -i regression TestCaseAutomation\TagsGrouppingTest.robot
#robot  -e regression TestCaseAutomation\TagsGrouppingTest.robot
#robot  -i sanity -e regression TestCaseAutomation\TagsGrouppingTest.robot

*** Settings ***
Suite Setup    log to console    Opening Browser
Suite Teardown    log to console    Closing Browser

Test Setup    log to console    Login to application
Test Teardown    log to console    Logout from application

*** Test Cases ***
TC1 Prepaid Recharge
    [Tags]    sanity
    log to console    This is prepaid recharge SanityTest1
    log to console    This is prepaid recharge SanityTest2

TC2 Postpaid Recharge
    [Tags]    regression
    log to console    This is postpaid recharge RegressionTest1
    log to console    This is postpaid recharge RegressionTest2

TC3 Search
    [Tags]    retest
    log to console    This is Search ReTest1
    log to console    This is Search ReTest2

TC4 Advanced Search
    [Tags]    sanity
    log to console    This is prepaid recharge SanityTest1
    log to console    This is prepaid recharge SanityTest2

TC5 Database Search
    [Tags]    regression
    log to console    This is postpaid recharge RegressionTest1
    log to console    This is postpaid recharge RegressionTest2

TC6 Database Search
    [Tags]    retest
    log to console    This is Search ReTest1
    log to console    This is Search ReTest2




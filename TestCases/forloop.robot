*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ForLoop
    #FOR    ${i}    IN RANGE   0   10
          #log to console    ${i}
            #exit for loop if    ${i}==4
    #END

    #FOR    ${i}    IN   1   2   3   4   5   6
    #FOR    ${i}    IN RANGE   0    10
          #log to console    ${i}
    #END
    #@{item}    create list    1    2    3    4    5    6    7    8
    #FOR    ${i}    IN    @{item}
           #log to console    ${i}
    #END

    @{nameList}     create list    1    2    3    4    5    6    7    8
    FOR     ${i}    IN  @{nameList}
        exit for loop if    ${i}==4
        log to console   ${i}
    END
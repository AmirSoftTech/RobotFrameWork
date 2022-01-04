*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
ForLoop:

    #Forloop example 1
    #FOR    ${i}    IN RANGE    10
        #log to console    ${i}
    #END

    #Forloop example 2
    #FOR    ${i}    IN    0    1    2    3    4    5    6    7    8
        #log to console   ${i}
    #END

    #Forloop example 3
    #@{items}    create list    0    1    2    3    4    5    6
    #FOR    ${i}    IN    @{items}
       #log to console    ${i}
       #exit for loop if    ${i}==4
    #END

    #Forloop example 4
    #FOR    ${i}    IN    Amir    Jakir    Liza    Mina    Dina
        #log to console   ${i}
    #END

    #Forloop example 5
    #@{items}    create list    Amir    Jakir    Liza    Mina    Dina
    #FOR    ${i}    IN    @{items}
       #log to console    ${i}
    #END

    @{items}    create list    0    1    2    3    4    5    6
    FOR    ${i}    IN    @{items}
       log to console    ${i}
       exit for loop if    ${i}==4
    END


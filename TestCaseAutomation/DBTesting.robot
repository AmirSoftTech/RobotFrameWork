*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup    Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown    Disconnect from Database

*** Variables ***
${DBHost}       127.0.0.1
${DBName}    mydb
${DBPass}    root
${DBPort}    3306
${DBUser}    root


*** Test Cases ***
Create person table
    ${output}=    Execute SQL String    Create table person(id integer, first_name varchar(20), last_name varchar(20));
    log to console    ${output}
    should be equal as strings    ${output}    None

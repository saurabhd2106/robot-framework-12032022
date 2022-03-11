*** Settings ***
Documentation       This is my first test case
Library             SeleniumLibrary
Library             DataDriver    file=../resources/testData.csv     encoding=utf_8    dialect=excel
Resource            baseTest.robot
Resource            ../pages/formElementsPage.robot
Test Setup          baseTest.Open the browser and navigate to the inquire link      ${browser_type}    ${baseUrl}
Test Teardown       baseTest.Close the browser
Test Template        Inquire about a course

*** Variables ***
${browser_type}     Chrome
${baseUrl}          https://test.qatechhub.com/form-elements


*** Test Cases ***    
Default test case name     ${firstname}    ${lastname}     ${email}   ${phoneNumber}  ${course}


*** Keywords ***
Inquire about a course 
        [Arguments]        ${firstname}    ${lastname}     ${email}  ${phoneNumber}   ${course}
        Fill the form with all detailes     ${firstname}    ${lastname}     ${email}  ${phoneNumber}   ${course}
        Verify the form submitted
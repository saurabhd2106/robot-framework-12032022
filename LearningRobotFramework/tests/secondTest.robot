*** Settings ***
Documentation       This is my first test case
Library             SeleniumLibrary
Resource            baseTest.robot
Test Setup          baseTest.Open the browser and navigate to the inquire link      ${browser_type}    ${baseUrl}
Test Teardown       baseTest.Close the browser

*** Variables ***
${browser_type}    Firefox
${baseUrl}         https://dev.qatechhub.com/form-elements
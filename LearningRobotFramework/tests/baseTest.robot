*** Settings ***
Documentation       This is  base test setup
Library             SeleniumLibrary

*** Variables ***


*** Keywords ***
Open the browser and navigate to the inquire link
    [Arguments]    ${browser_type}    ${baseUrl}
        Create WebDriver        ${browser_type}
        Go To                   ${baseUrl}

Close the browser
        Close All Browsers
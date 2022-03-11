*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open the browser and navigates to homepage
    [Arguments]    ${browserType}     ${baseUrl}
    Open Browser    browser=${browserType}    url=${baseUrl}   
Close the browser
    Close All Browsers
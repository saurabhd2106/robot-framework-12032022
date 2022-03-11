*** Settings ***
Library    SeleniumLibrary
Resource        baseTest.robot
Resource        ../pages/searchPage.robot
Test Setup      Open the browser and navigates to homepage    ${browserType}    ${baseUrl}
Test Teardown   Close the browser

*** Variables ***
${browserType}        Chrome
${baseUrl}    https://www.amazon.in


*** Test Cases ***
Search a product with a category
    When User search for a product Apple watch with category Electronics
    Then User gets a list of products
    And User selects the 5 product
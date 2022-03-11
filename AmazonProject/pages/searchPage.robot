*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    ../customLibs/AmazonCustomeKeywords.py

*** Variables ***
${searchbox}            id:twotabsearchtextbox
${searchDropdown}       id:searchDropdownBox
${searchButton}         id:nav-search-submit-button
${allProducts}          xpath://div[@data-component-type="s-search-result"]
@{products}

*** Keywords ***

User search for a product ${product} with category ${category}
      Hello World 
      Input Text    ${searchbox}    ${product}
      Select From List By Label    ${searchDropdown}    ${category}
      Click Element    ${searchButton}

User gets a list of products in list
    ${products}=    Get WebElements    ${allProducts}
    FOR    ${element}    IN    @{products}
        ${productInfo}=   Get text    ${element}
        Log    ${productInfo}
    END

User gets a list of products
    Print All Products From List    ${allProducts}

User selects the 5 product
    ${products}=    Get WebElements    ${allProducts}
    ${particularProduct}=     Get From List    ${products}    5
    ${productText}=  Get text     ${particularProduct}
    Log    ${productText}
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${firstnameField}       id:wpforms-49-field_1
${lastnameField}        id:wpforms-49-field_1-last
${emailField}           id:wpforms-49-field_2
${phoneNumberField}     id:wpforms-49-field_4
${femaleGenderField}    xpath://input[@value='Female']
${courseDropdown}       id:wpforms-49-field_5
${submitButton}         id:wpforms-submit-49
${confirmationMessage}  css:#wpforms-confirmation-49


*** Keywords ***
Fill the form with all detailes
       [Arguments]     ${firstname}    ${lastname}     ${email}    ${phoneNumber}    ${course}
    Input Text      ${firstnameField}               ${firstname}
    Input Text      ${lastnameField}                ${lastname}
    Input Text      ${emailField}                   ${email}
    Input Text      ${phoneNumberField}               ${phoneNumber}
    Click Element   ${femaleGenderField}      
    Select From List By Label      ${courseDropdown}       ${course}
    Click Element      ${submitButton}

Verify the form submitted
        Element Should Contain      id:wpforms-confirmation-49      You have successfully filled in the form!

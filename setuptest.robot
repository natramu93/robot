*** Settings ***
Test Setup  Open My Browser
Test Teardown  Close All Browsers
Library  SeleniumLibrary  30  30
Library  OperatingSystem



*** Test Cases ***
Register
    [Teardown]  NONE
    Click Link  MY ACCOUNT
    Click Element  //span[text()='Register']
    Input Text  id:firstname  Natarajan
    Input Text  name:lastname  Ramanathan
    Input Text  xpath://input[@title='Email Address']  ${EMPTY}
    Select From List By Index  name:company_type  3
    Select From List By Label  name:individual_role  Business/sales/marketing/merchandising
    Input Password  name:password  Welcome123
    Input Password  name:confirmation  Welcome123
    Select Frame  //iframe[@role='presentation']
    Click Element  class:recaptcha-checkbox-checkmark
    Unselect Frame
    Select Checkbox  id:agree_terms
    Submit Form
Login
    [Setup]  Go Back
    Input Text  id:email  natarajan.ramanathan93@gmail.com
    Input Password  id:pass  Welcome123
    Click Element  id:send2
    Element Should Be Visible  link:Log Out
    Click Link  Log Out
*** Keywords ***
Open My Browser
    Append To Environment Variable  PATH  ${CURDIR}
    Open Browser  http://magento.com  gc
    Maximize Browser Window


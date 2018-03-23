*** Settings ***
Documentation  This suite has register functionality
Force Tags  register  regression
Library  SeleniumLibrary  30  30
Library  OperatingSystem

*** Test Cases ***
Negative Register Scenario
    [Setup]  NONE
    Register Scenario  ${EMPTY}  lname
    fname  ${EMPTY}

*** Keywords ***
Register Scenario
    [Arguments]  ${fname}  ${lname}
    Append To Environment Variable  PATH  ${CURDIR}
    Open Browser  http://magento.com  gc
    Maximize Browser Window
    Click Link  MY ACCOUNT
    Click Element  //span[text()='Register']
    Input Text  id:firstname  ${fname}
    Input Text  name:lastname  ${lname}
    Input Text  xpath://input[@title='Email Address']  natarajan@clearcodeconsulting.com
    Select From List By Index  name:company_type  3
    Select From List By Label  name:individual_role  Business/sales/marketing/merchandising
    Input Password  name:password  Welcome123
    Input Password  name:confirmation  Welcome123
    Select Frame  //iframe[@role='presentation']
    Click Element  class:recaptcha-checkbox-checkmark
    Unselect Frame
    Select Checkbox  id:agree_terms
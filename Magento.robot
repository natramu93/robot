*** Settings ***
Documentation  This suite has register functionality
Force Tags  register  regression
Library  SeleniumLibrary  30  30
Library  OperatingSystem
Test Template  Negative Register Scenario
Suite Setup  Open My Browser
Suite Teardown  Close All Browsers


*** Test Cases ***
title1  Natarajan  Ramanathan  natarajan@clearcodeconsulting.com  Welcome123  ${EMPTY}
title2  Natarajan  Ramanathan  natarajan@clearcodeconsulting.com  ${EMPTY}  Welcome123
title3  Natarajan  Ramanathan  ${EMPTY}  Welcome123  Welcome123



*** Keywords ***
Open My Browser
    Append To Environment Variable  PATH  ${CURDIR}
    Open Browser  http://magento.com  gc
    Maximize Browser Window
    Click Link  MY ACCOUNT
    Click Element  //span[text()='Register']
Negative Register Scenario
    [Arguments]  ${fname}  ${lname}  ${email}  ${pwd}  ${cpwd}
    Input Text  id:firstname  ${fname}
    Input Text  name:lastname  ${lname}
    Input Text  xpath://input[@title='Email Address']  ${email}
    Select From List By Index  name:company_type  3
    Select From List By Label  name:individual_role  Business/sales/marketing/merchandising
    Input Password  name:password  ${pwd}
    Input Password  name:confirmation  ${cpwd}
    Select Frame  //iframe[@role='presentation']
    Click Element  class:recaptcha-checkbox-checkmark
    Unselect Frame
    Select Checkbox  id:agree_terms
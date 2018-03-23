*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
Switch window
    Open Browser  http://naukri.com  gc
    Select Window  title:Amazon
    Maximize Browser Window
    Close Window

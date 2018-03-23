*** Settings ***
Library  SeleniumLibrary  30  30
Library  OperatingSystem
Library  SeleniumLibrary  implicit_wait=30

*** Test Cases ***
Opening Browser
    Append To Environment Variable  PATH  ${CURDIR}
    #Set Suite Variable  ${ff_bin}  C:\\Program Files\\Mozilla Firefox\\firefox.exe
    Open Browser  http://google.com  gc
    ${url}=  Get Location
    Should Be Equal As Strings  ${url}  https://www.google.co.in/?gfe_rd=cr&dcr=0&ei=4w2yWuOsNvPy8AeIy
*** Settings ***
Variables  test.yaml
*** Test Cases ***
Variable test
    Log  ${a}
    Log  @{b}[1]
    Log  &{c}[d]

#Loop Test
#    :FOR  ${a}  in range  20
#    \   log  ${a}
#    \   ${k}=  Evaluate  ${a} + 1
#    \   log  ${k+1}
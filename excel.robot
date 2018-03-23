*** Settings ***
Resource  excelsupport.robot
Library  res1.py
Variables  test.yaml

*** Test Cases ***
Addition
    ${s}  Add  ${b}  &{d}[e]
    Log  ${s}
Subtraction
    ${s}  Sub  1  2
    Log  ${s}
Add1
    ${k}  m1  5  10
    Log  ${k}
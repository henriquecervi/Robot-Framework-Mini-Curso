*** Settings ***

Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variables ***
${check-thor}       id:thor
${check-iron}       css:input[value='iron-man']
${check-panther}    xpath://*[@id='checkboxes']/input[7]


*** Test Cases ***
Selecting Movies By Id
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${check-thor}
    Checkbox Should Be Selected         ${check-thor}
    Sleep                               3
       

Selecting Movies With CSS Selector
    [tags]      ironman
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${check-iron} 
    Checkbox Should Be Selected         ${check-iron} 
    Sleep                               3
    

Selecting Movies With Xpath
    [tags]      xpath
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${check-panther}
    Checkbox Should Be Selected         ${check-panther}
    Sleep                               5
    

*** Settings ***

Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Test Cases ***
Selecting By Text And Check With Value
    Go To                                           ${url}/dropdown
    Select From List By Label                       class:avenger-list              Natasha Romanoff
    ${natasha}=                                     Get Selected List Value         class:avenger-list
    Should Be Equal                                 ${natasha}                      4


Selecting By Value And Check With Label
    Go To                                           ${url}/dropdown
    Select From List By Value                       id:dropdown                     2
    ${bucky}=                                       Get Selected List Label         class:avenger-list
    Should Be Equal                                 ${bucky}                        Bucky

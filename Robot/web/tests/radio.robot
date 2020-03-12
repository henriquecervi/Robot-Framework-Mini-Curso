*** Settings ***

Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Test Cases ***
Selecting Radio By Id
    Go To                                          ${url}/radios
    Select Radio Button                            movies  cap
    Radio Button Should Be Set To                  movies  cap

Selecting Radio By Value
    Go To                                          ${url}/radios
    Select Radio Button                            movies  ant-man
    Radio Button Should Be Set To                  movies  ant-man
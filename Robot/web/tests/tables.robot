*** Settings ***

Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Test Cases ***
Verify value when sending number of line
    Go To                           ${url}/tables
    Table Row Should Contain        id:actors        3          Senhor das Estrelas


Descobre a linha pelo texto chave e valida os demais valores
    Go To                     ${url}/tables
    ${element}=               Get WebElement        xpath:.//tr[contains(., '@teamcevans')]
    Log                       ${element.text}
    Log To Console            ${element.text}
    Should Contain            ${element.text}       Capitão América
    Should Contain            ${element.text}       Evans


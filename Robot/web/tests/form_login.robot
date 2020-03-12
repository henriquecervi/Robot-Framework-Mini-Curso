*** Settings ***

Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Keywords ***
Login With
    [Arguments]         ${uname}        ${pass}

    Input Text          css:input[name=username]        ${uname}
    Input Text          css:input[name=password]        ${pass}
    Click Element       class:btn-login

Should Contain Login Alert
    [Arguments]                 ${expect_message}

    ${message}=                 Get WebElement                  id:flash
    Should Contain              ${message.text}                 ${expect_message}

Should See Logged User
    [Arguments]

    Page Should Contain         Olá, ${fullname}. Você acessou a área logada!

*** Test Cases ***
Login With Sucess
    Go To                       ${url}/login
    Login With                  stark       jarvis!
    Page Should Contain         Tony Stark

Login With Wrong Password
    [tags]                          login_error
    Go To                           ${url}/login
    Login With                      stark           errei    

    Should Contain Login Alert      Senha é invalida!

Login With Wrong Username
    [tags]                          username_error
    Go To                           ${url}/login
    Login With                      jarvinho            jarvis!
    
    Should Contain Login Alert      O usuário informado não está cadastrado!                
    
    
    




*** Settings ***
Library     app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          Welcome     Henrique
    Should Be Equal     ${result}   Olá Henrique, Bem vindo ao Curso básico de Robot Framework!

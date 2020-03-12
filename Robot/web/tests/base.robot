*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Nova sessão
    Open Browser                        ${url}                 chrome
Encerra sessão     
    Capture Page Screenshot     
    Close Browser

*** Variables ***
${url}              https://training-wheels-protocol.herokuapp.com
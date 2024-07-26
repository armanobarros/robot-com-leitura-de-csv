*** Settings ***
Resource    ../resources/main.robot
Test Setup    Dado que acesse Pratice Automation Test
Test Teardown    Então fazer logout e fechar o navegador 

*** Test Cases ***
Login Correto
    Dado que preecha os campos de login com dados válidos
    Então verifico mensagem de login
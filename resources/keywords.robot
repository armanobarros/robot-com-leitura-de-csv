*** Settings ***
Resource    main.robot
Resource    pages/cadastrar.robot

*** Keywords ***
Dado que preecha o campo de cadastro com dados válidos
    [Arguments]    ${email}    ${password}
    Input Text    ${REG_EMAIL}    ${email}
    Input Text    ${REG_PASSWORD}    ${password}
    Click Element    ${Cadastrar}

Dado que preecha os campos de login com dados válidos
    [Arguments]    ${email}    ${password}
    Input Text    ${Username}    ${email}
    Input Text    ${Password}    ${password}
    Click Element    ${Login}

Então verifico mensagem de login
    Wait Until Element Is Visible    ${TEXT_ELEMENT}    timeout=10s
    Element Should Contain    ${TEXT_ELEMENT}    Hello

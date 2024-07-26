*** Settings ***
Resource    ../resources/main.robot
Test Setup    Dado que acesse Pratice Automation Test

*** Test Cases ***
Cadastrar massa corretamente
    # Carrega o arquivo CSV em uma tabela
    ${csv_data}=    Read Table From Csv    ${CSV_FILE}

    # Para cada linha da tabela, realiza o cadastro e login
    FOR    ${csv_row}    IN    @{csv_data}
        ${email}=    Get From Dictionary    ${csv_row}    email
        ${password}=    Get From Dictionary    ${csv_row}    password
        Dado que preecha o campo de cadastro com dados válidos    ${email}    ${password}
        Sleep    3s
        Click Element    xpath://*[@id="page-36"]/div/div[1]/div/p[1]/a
        Sleep    3s
        Dado que preecha os campos de login com dados válidos    ${email}    ${password}
        Então verifico mensagem de login
        Sleep    3s
        Click Element    xpath://*[@id="page-36"]/div/div[1]/div/p[1]/a
    END
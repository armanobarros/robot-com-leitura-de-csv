*** Settings ***
Resource    ../resources/main.robot
Test Setup    Dado que acesse Pratice Automation Test
Test Teardown    Então fazer logout e fechar o navegador

*** Test Cases ***
Cadastrar massa corretamente
    # Carrega o arquivo CSV em uma tabela
    ${csv_data}=    Read Table From Csv    ${CSV_FILE}

    # Para cada linha da tabela, realiza o cadastro e login
    FOR    ${csv_row}    IN    @{csv_data}
        ${email}=    Get From Dictionary    ${csv_row}    email
        ${password}=    Get From Dictionary    ${csv_row}    password
        Dado que preecha o campo de cadastro com dados válidos    ${email}    ${password}
        Então verifico mensagem de login
    END

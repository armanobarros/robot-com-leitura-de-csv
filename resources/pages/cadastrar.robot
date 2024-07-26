*** Settings ***
Resource    ../main.robot

*** Variables ***
${REG_EMAIL}       id:reg_email
${REG_PASSWORD}    id:reg_password
${Cadastrar}       xpath://*[@id="customer_login"]/div[2]/form/p[3]/input[3]
${Username}        id:username
${INPUT_Password}  id:password
${Login}           name:login    
${TEXT_ELEMENT}    xpath://p[contains(text(), 'Hello')]

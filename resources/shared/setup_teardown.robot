*** Keywords ***
Dado que acesse Pratice Automation Test
    Open Browser    https://practice.automationtesting.in/    chrome
    Maximize Browser Window
    Sleep    2s
    Click Element    xpath://*[@id="menu-item-50"]/a

Então fazer logout e fechar o navegador
    Click Element    xpath://*[@id="page-36"]/div/div[1]/div/p[1]/a
    Close Browser

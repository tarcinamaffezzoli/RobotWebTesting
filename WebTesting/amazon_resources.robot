*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}                      https://www.amazon.com.br/
${LOGO}                     //a[@id='nav-logo-sprites']
${MENU_TODOS}               //span[@class='hm-icon-label']
${TITULO_MENU}              //div[normalize-space()='Destaques']
${VER_TUDO}                 //a[@aria-label='Ver todos os departamentos']//div[contains(text(),'Ver tudo')]
${CONFIRMAR_VER_TUDO}       //div[normalize-space()='Comprar por categoria']
${ELETRONICOS_TV_AUDIO}     //div[normalize-space()='Eletrônicos, TV e Áudio']
${CONFIRMAR_MENU_ELETRO}    //div[@role='heading'][normalize-space()='Eletrônicos']
${TUDO_EM_ELETRONICOS}      //a[normalize-space()='Tudo em Eletrônicos']
${BARRA_ROLAGEM_MENU}       //div[@class='hmenu hmenu-translateX hmenu-visible']
${ELETRONICOS_E_TECN}       (//span[contains(text(),'Eletrônicos e Tecnologia')])[1]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGO}


Entrar no menu "Eletrônicos"
    Wait Until Element Is Visible    locator=${MENU_TODOS}
    Click Element                    locator=${MENU_TODOS}
    Wait Until Element Is Visible    locator=${TITULO_MENU}
    Click Element                    locator=${VER_TUDO}
    Wait Until Element Is Visible    locator=${CONFIRMAR_VER_TUDO}
    Scroll Element Into View         locator=${ELETRONICOS_TV_AUDIO}
    Click Element                    locator=${ELETRONICOS_TV_AUDIO}
    Sleep    1.0s
    Wait Until Element Is Visible    locator=${CONFIRMAR_MENU_ELETRO}
    Scroll Element Into View         locator=${TUDO_EM_ELETRONICOS}
    Sleep    1.0s
    Wait Until Element Is Visible    locator=${TUDO_EM_ELETRONICOS}
    Wait Until Element Is Enabled    locator=${TUDO_EM_ELETRONICOS}
    Click Element                    locator=${TUDO_EM_ELETRONICOS}
    # Wait Until Element Is Visible    locator=${ELETRONICOS_E_TECN}
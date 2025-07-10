*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}                      https://www.amazon.com.br/
${LOGO}                     //a[@id='nav-logo-sprites']
${MENU_TODOS}               //span[@class='hm-icon-label']
${TITULO_MENU}              //div[normalize-space()='Destaques']
${ITEM_AMAZON_PRIME}        //a[normalize-space()='Amazon Prime']
${BARRA_ROLAGEM_MENU}       //div[@class='hmenu hmenu-translateX hmenu-visible']
${TELA_AMAZON_PRIME}        //img[@alt='Logotipo do Amazon Prime']
${FRETE_GRATIS}             //a[@aria-label='Frete GRÁTIS na primeira compra']
${BANER_FRETE_GRATIS}       //img[@alt='Frete GRÁTIS no seu primeiro pedido']

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGO}


Entrar no menu "Amazon Prime"
    Wait Until Element Is Visible    locator=${MENU_TODOS}
    Click Element                    locator=${MENU_TODOS}
    Wait Until Element Is Visible    locator=${TITULO_MENU}
    Scroll Element Into View         locator=${ITEM_AMAZON_PRIME}
    Click Element                    locator=${ITEM_AMAZON_PRIME}
    Sleep    1.0s
    Element Should Be Visible        locator=${TELA_AMAZON_PRIME}


Verificar se aparece a opção "Frete grátis"
    Scroll Element Into View         locator=${FRETE_GRATIS}    
    Click Element                    locator=${FRETE_GRATIS}
    Element Should Be Visible        locator=${BANER_FRETE_GRATIS}
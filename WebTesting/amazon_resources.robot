*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${BROWSER}                  chrome
${URL}                      https://www.amazon.com.br/
${LOGO}                     //a[@id='nav-logo-sprites']
${MENU_TODOS}               //span[@class='hm-icon-label']
${TITULO_MENU}              //div[normalize-space()='Destaques']
${ITEM_AMAZON_PRIME}        //a[normalize-space()='Amazon Prime']
${BARRA_ROLAGEM_MENU}       //div[@class='hmenu hmenu-translateX hmenu-visible']
${TELA_AMAZON_PRIME}        //img[@alt='Logotipo do Amazon Prime']
${APRV_MAXI_AMAZO_PRIME}    //h2[normalize-space()='Aproveite ao máximo com o Amazon Prime']
# ${FRETE_GRATIS}             //a[@aria-label='Frete GRÁTIS na primeira compra']
# ${BANER_FRETE_GRATIS}       //img[@alt='Frete GRÁTIS no seu primeiro pedido']
${CAMPO_PESQUISA}           twotabsearchtextbox
${PESQUSAR}                 nav-search-submit-button
${PRODUTO_GIN}              //img[@alt='Anúncio patrocinado – Gin Bombay Sapphire 750ml']

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGO}


Entrar no menu "Todos"
    Wait Until Element Is Visible    locator=${MENU_TODOS}
    Click Element                    locator=${MENU_TODOS}
    Wait Until Element Is Visible    locator=${TITULO_MENU}


Entrar no menu "Amazon Prime"
    Scroll Element Into View         locator=${ITEM_AMAZON_PRIME}
    Click Element                    locator=${ITEM_AMAZON_PRIME}
    Sleep    1.0s
    Element Should Be Visible        locator=${TELA_AMAZON_PRIME}


Verificar a descrição da tela "Aproveite ao máximo com o Amazon Prime"
    Scroll Element Into View         locator=${APRV_MAXI_AMAZO_PRIME}
    Element Should Be Visible        locator=${APRV_MAXI_AMAZO_PRIME}

# Verificar se aparece a opção "Frete grátis"
    # Scroll Element Into View         locator=${FRETE_GRATIS}    
    # Click Element                    locator=${FRETE_GRATIS}
    # Element Should Be Visible        locator=${BANER_FRETE_GRATIS}


Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Input Text    locator=${CAMPO_PESQUISA}    text=Xbox Series S


Clicar no botão de pesquisa
    Click Element                    locator=${PESQUSAR}


Verificar o resultado da pesquisa, se listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//img[@alt='Console Xbox Series S'])[1]


#GHERKIN STEPS

Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br

Quando acessar o menu "Todos"
    Entrar no menu "Todos"
    
E acessar o menu "Amazon Prime"
    Entrar no menu "Amazon Prime"

Então apresenta a descrição da tela "Aproveite ao máximo com o Amazon Prime"
    Verificar a descrição da tela "Aproveite ao máximo com o Amazon Prime"
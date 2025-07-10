*** Settings ***
Documentation  Essa suite testa o site da Amazon.com.br
Resource      amazon_resources.robot
Test Setup     Abrir o navegador
# Test Teardown  Fechar o navegador


*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Amazon Prime"
    [Documentation]  Esse teste verifica o menu Amazon Prime do site da Amazon.com.br
    ...              e verifica a opção Fréte grátis
    [Tags]           menus  categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Amazon Prime"
    Verificar se aparece a opção "Frete grátis"
# ...    
# Caso de teste 02 - Pesquisa de um Produto
#     [Documentation]  Esse teste vrifica a busca de um produto
#     [tags]           busca_produtos  lista_busca
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Gin Bombay Sapphire 750ml" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa, se listando o produto pesquisado
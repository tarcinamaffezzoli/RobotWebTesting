*** Settings ***
Documentation  Essa suite testa o site da Amazon.com.br
Resource      amazon_resources.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Amazon Prime"
    [Documentation]  Esse teste verifica o menu Amazon Prime do site da Amazon.com.br
    ...              e verifica a opção Fréte grátis
    [Tags]           menus  categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Todos"
    E acessar o menu "Amazon Prime"
    Então apresenta a descrição da tela "Aproveite ao máximo com o Amazon Prime"

Caso de teste 02 - Pesquisa de um Produto
    [Documentation]  Esse teste verifica a busca de um produto
    [tags]           busca_produtos  lista_busca
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página
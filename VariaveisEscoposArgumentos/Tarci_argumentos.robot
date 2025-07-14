*** Settings ***
Documentation   Teste com uso de variáveis como argumentos em Keywords

Library    String

*** Keywords ***
Criar Email Customizado
    [Arguments]    ${nome}    ${sobrenome}
    ${palavra_aleatoria}=    Generate Random String    6    [LETTERS][NUMBERS]
    ${email}=    Catenate    SEPARATOR=    ${nome}    ${sobrenome}    ${palavra_aleatoria}    @testerobot.com
    [Return]    ${email}

*** Test Cases ***
Teste Criar Email Customizado
    ${email_gerado}=    Criar Email Customizado    Tarciana    Maffezzoli
    Log To Console    Email gerado: ${email_gerado}

*** Settings ***
Documentation   Testes Maior e Menor que 10

Library    Collections
Library    SeleniumLibrary
Library    BuiltIn

*** Variables ***

@{INDICE}    0    2    3    4    5    6    7    8    9    10

*** Test Cases ***
Teste com números maiores e menores que 10
    Imprimir e dizer se é maior ou menor que 10


*** Keywords ***

Imprimir e dizer se é maior ou menor que 10
    Log To Console    ${\n}   
    FOR    ${numero}    IN    @{INDICE}
        ${LISTA_NUMERO}=    Evaluate    random.randint(1, 20)    modules=random
        IF    ${LISTA_NUMERO} > 10
            Log To Console    ${LISTA_NUMERO} É maior que 10.
        ELSE IF    ${LISTA_NUMERO} < 10
            Log To Console    ${LISTA_NUMERO} É menor que 10.
        ELSE
            Log To Console    ${LISTA_NUMERO} É é igual à 10.
        END
    END
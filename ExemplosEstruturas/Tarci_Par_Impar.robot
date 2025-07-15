*** Settings ***
Documentation   Testes Par e Impar

Library    Collections

*** Variables ***

### Lista
@{LISTA_NUMERO}   0    1    2    3    4    5    6    7    8    9    10    11


*** Test Cases ***
Teste com números pares e impares
    Imprimir se é Par ou Impar


*** Keywords ***

Imprimir se é Par ou Impar
    Log To Console    ${\n}   
    FOR    ${numero}    IN    @{LISTA_NUMERO}
        ${resto}=    Evaluate    ${numero} % 2
        IF    ${resto} == 0
            Log To Console    Este número é par: ${numero}
        ELSE
            Log To Console    Este número é impar: ${numero}
        END
    END
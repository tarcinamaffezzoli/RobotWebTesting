*** Settings ***
Documentation   Testes utilizando IF e FOR

*** Variables ***
### Lista
@{LISTA_NUMERO}   0    1    2    1    4    5    6    7    8    9    10    11


*** Test Cases ***
Teste de imprimir apenas alguns números 1
    Imprimir somente se for 5 e 10 - Teste 1

Teste de imprimir apenas alguns números 2
    Imprimir somente se for 5 e 10 - Teste 2

Teste de imprimir apenas alguns números 3
    Imprimir somente se for 5 e 10 - Teste 3

*** Keywords ***
Imprimir somente se for 5 e 10 - Teste 1
    Log To Console  ${\n}

    FOR  ${numero}    IN  @{LISTA_NUMERO}
        IF    ${numero} == 5
            Log To Console    Eu sou o número 5!
        ELSE IF    ${numero} == 10
            Log To Console    Eu sou o número 10!
        ELSE
            Log To Console    Eu não sou o número 5 e nem o 10!
        END
    END


Imprimir somente se for 5 e 10 - Teste 2
    Log To Console    ${\n}
    
    FOR    ${numero}    IN    @{LISTA_NUMERO}
        IF    ${numero} == 5 or ${numero} == 10
            Log To Console    Eu sou o número ${numero}!
        ELSE
            Log To Console    Eu não sou o número 5 e nem o 10!
        END
    END


Imprimir somente se for 5 e 10 - Teste 3
      Log To Console  ${\n}
  FOR    ${numero}    IN   @{LISTA_NUMERO}
      IF  ${numero} in (5, 10)
          Log To Console    Eu sou o número ${numero}!
      ELSE
          Log To Console    Eu não sou o número 5 e nem o 10!
      END              
  END
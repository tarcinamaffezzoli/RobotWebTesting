*** Settings ***
Documentation   Esta é uma suíte de teste com varáveis do tipo LISTAS
*** Variable ***

@{MESES}    janeiro   fevereiro   março   abril   maio    junho    julho    agosto    setembro    outubro    novembro    dezembro

*** Test Cases ***
Caso de teste Lista
    Caso de teste meses do ano

*** Keywords ***
Caso de teste meses do ano
    Log To Console    Mês 1: ${MESES[0]}
    Log to Console    Mês 2: ${MESES[1]}
    Log to Console    Mês 3: ${MESES[2]}        
    Log To Console    Mês 4: ${MESES[3]}
    Log To Console    Mês 5: ${MESES[4]}
    Log To Console    Mês 6: ${MESES[5]}
    Log To Console    Mês 7: ${MESES[6]}
    Log To Console    Mês 8: ${MESES[7]}
    Log To Console    Mês 9: ${MESES[8]}
    Log To Console    Mês 10: ${MESES[9]}
    Log To Console    Mês 11: ${MESES[10]}
    Log To Console    Mês 12: ${MESES[11]}
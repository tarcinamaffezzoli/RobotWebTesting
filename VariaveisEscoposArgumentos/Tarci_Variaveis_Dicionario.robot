*** Settings ***
Documentation   Esta é uma suíte de teste com varáveis do tipo DICIONÁRIOS
*** Variable ***

&{JAN}    name=Janeiro      days=31 dias
&{FEV}    name=Fevereiro    days=28 dias
&{MAR}    name=Março        days=31 dias
&{ABR}    name=Abril        days=30 dias
&{MAI}    name=Maio         days=31 dias
&{JUN}    name=Junho        days=30 dias
&{JUL}    name=Julho        days=31 dias
&{AGO}    name=Agosto       days=31 dias
&{SET}    name=Setembro     days=30 dias
&{OUT}    name=Outubro      days=31 dias
&{NOV}    name=Novembro     days=30 dias
&{DEZ}    name=Dezembro     days=31 dias


*** Test Cases ***
Caso de teste Dicionário
    Caso de teste meses do ano e quantidade de dias

*** Keywords ***
Caso de teste meses do ano e quantidade de dias
    Log to Console    O mês de: ${JAN.name} Tem: ${JAN.days}
    Log to Console    O mês de: ${FEV.name} Tem: ${FEV.days}   
    Log To Console    O mês de: ${MAR.name} Tem: ${MAR.days}
    Log To Console    O mês de: ${ABR.name} Tem: ${ABR.days}
    Log To Console    O mês de: ${MAI.name} Tem: ${MAI.days}
    Log To Console    O mês de: ${JUN.name} Tem: ${JUN.days}
    Log To Console    O mês de: ${JUL.name} Tem: ${JUL.days}
    Log To Console    O mês de: ${AGO.name} Tem: ${AGO.days}
    Log To Console    O mês de: ${SET.name} Tem: ${SET.days}
    Log To Console    O mês de: ${OUT.name} Tem: ${OUT.days}
    Log To Console    O mês de: ${NOV.name} Tem: ${NOV.days}
    Log To Console    O mês de: ${DEZ.name} Tem: ${DEZ.days}
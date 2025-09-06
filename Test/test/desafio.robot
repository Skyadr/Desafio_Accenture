Language: Brazilian Portuguese

*** Settings ***
Documentação    Desafio Accenture automação
Resource        ../base.resource
Resource        ../Resource/page/preenchendoForm.resource
Test teardown   Close Browser

*** Test Cases ***
Preencher o formulário e verificar popup
    Dado Dado que estou na página de Practice Form
    Quando preencho o formulário
    E submeto o formulário
    Então o popup de confirmação é visualizado
    E clico para fechar o popup
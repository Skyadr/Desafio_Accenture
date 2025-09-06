*** Settings ***
Resource    ../../base.resource
Resource    ../utils/openBrowser.resource
Resource    ../Locators/camposForm.resource

*** Keywords ***
Dado que estou na página de Practice Form
    Abrir o site DemoQA
    Remover banners
    #Clicando no menu Forms
    Wait Until Element Is Visible    ${opcao_Forms}
    Scroll Element Into View         ${opcao_Forms}
    Click Element                    ${opcao_Forms}
    #Clicando no submenu Practice Form
    Remover banners
    Set Focus To Element             ${submenu_PractForm}
    Wait Until Element Is Visible    ${submenu_PractForm}    10
    Click Element                    ${submenu_PractForm}

Quando preencho o formulário
    Remover banners
    #Preenchendo dados pessoais
    Input Text    ${campo_Fname}    Adriano
    Input Text    ${campo_Lname}    Queiroz
    Input Text    ${campo_Email}    adriano@teste.com
    Wait Until Element Is Visible    ${radio_Male}    10
    Set Focus To Element             ${radio_Male}
    Click Element                    ${radio_Male}
    Input Text                       ${campo_Mobile}    9999999999

    #Selecionando data de nascimento
    Click Element                ${campo_Date}
    Select From List By Value    class=react-datepicker__year-select    1981
    Select From List By Value    class=react-datepicker__month-select   6
    Click Element                xpath=//div[contains(@class,'react-datepicker__day--025')]
    Sleep    3s

    #Selecionando matéria
    Set Focus To Element             ${campo_Subject}
    Wait Until Element Is Visible    ${campo_Subject}    5s
    Click Element                    ${campo_Subject}
    Press Keys                       ${campo_Subject}    Economics    ENTER
    Sleep    3s

    #Selecionando hobbies
    Remover banners
    Wait Until Element Is Visible    ${check_Hobbies1}    10s
    Set Focus To Element             ${check_Hobbies1}
    Click Element                    ${check_Hobbies1}
    Wait Until Element Is Enabled    ${check_Hobbies2}
    Wait Until Element Is Visible    ${check_Hobbies2}    10s
    Click Element                    ${check_Hobbies2}

    #Fazendo upload do arquivo
    Wait Until Element Is Visible    ${botao_Arquivo}    5s
    Choose File                      ${botao_Arquivo}    ${arquivo_txt}

    #Preenchendo endereço
    Input Text    ${campo_Address}    Av. Brasil, 3333

    #Selecionando estado e cidade
    Click Element                    ${lista_State}
    Press Keys                       ${lista_State}    Uttar Pradesh    TAB
    Wait Until Element Is Enabled    ${lista_City}    5s
    Wait Until Element Is Visible    ${lista_City}    5s
    Click Element                    ${lista_City}
    Press Keys                       ${lista_City}     Agra    ENTER

E submeto o formulário
    #Clicando para submeter formulário
    Wait Until Element Is Visible    ${botao_Submit}
    Click Button                     ${botao_Submit}

Então o popup de confirmação é visualizado
    #Visualizando e validando popup
    Remover banners
    Page Should Contain Element   ${popup_Final}
    Page Should Contain    Thanks for submitting the form
    Capture Page Screenshot

E clico para fechar o popup
    #Fechando popup
    Click Button    closeLargeModal






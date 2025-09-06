*** Variables ***

${opcao_Forms}          //*[@id="app"]/div/div/div[2]/div/div[2]/div/div[3]/h5
${menu_forms}           //*[@id="app"]/div/div/div/div[1]/div/div/div[2]/span/div/div[1]/text()
${submenu_PractForm}    xpath=//span[@class="text" and text()="Practice Form"]
${campo_Fname}          firstName
${campo_Lname}          lastName
${campo_Email}          userEmail
${radio_Male}           xpath=//label[@for="gender-radio-1"]
${campo_Mobile}         userNumber
${campo_Date}           dateOfBirthInput
${campo_Subject}        subjectsContainer
${check_Hobbies1}       xpath=//label[@for="hobbies-checkbox-1"]
${check_Hobbies2}       xpath=//label[@for="hobbies-checkbox-2"]
${botao_Arquivo}        uploadPicture
${arquivo_txt}          ${CURDIR}\\Upload\\desafio.txt
${campo_Address}        currentAddress
${lista_State}          state
${lista_City}           city
${botao_Submit}         submit
${popup_Final}          css=.modal-content
${botao_CloseModal}     closeLargeModal
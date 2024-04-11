*** Settings ***
Library    SeleniumLibrary

*** variables ***
${BUTTON_LOGIN_HEADER}    //a[@class='smls-hf-btn-hyperlink-border smls-hf-profile'][contains(@id,'toEnter')][contains(.,'Acessar conta')]
${INPUT_CREDENTIAL_EXTERNAL_LOGIN}    //input[contains(@inputmode,'text')]

*** Keywords ***
Login by button on header
    Click Link    ${BUTTON_LOGIN_HEADER}
    Sleep    10 seconds
    Wait Until Element Is Visible    ${INPUT_CREDENTIAL_EXTERNAL_LOGIN}

Log in with externalId
    Input Text    ${INPUT_CREDENTIAL_EXTERNAL_LOGIN}    ${externalId}
    Sleep    10 seconds
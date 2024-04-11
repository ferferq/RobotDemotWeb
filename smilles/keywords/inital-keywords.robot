*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open browser default
    [Arguments]    ${URL}=%{URL_STORE}
    Open Browser    ${URL}    %{BROWSER}
    Sleep    10 seconds
    Maximize Browser Window
    Sleep    10 seconds

Select an user "${type}"
    Set Test Variable    ${externalId}    %{EXTERNAL_ID_${type}}
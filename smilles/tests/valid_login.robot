*** Settings ***
Resource    ../config/config.robot
Resource    ../keywords/inital-keywords.robot
Resource    ../keywords/login.keywords.robot

Suite Setup    Init Config
Test Setup    Open browser default
Test Teardown    Close Browser


*** Test Cases ***
Should login on website when user is valid
    [Documentation]    https://xxxxxxx.atlassian.net/browse/xxxxx-1234
    ...                login by user valid     
    [tags]    Frontend    Production    Staging    Login
    #Arrange
    Select an user "VALID"

    # Act
    Login by button on header
    Log in with externalId


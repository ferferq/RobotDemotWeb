*** Settings ***
Library    OperatingSystem

*** Keywords ***
Init Config
    [Arguments]    ${stage}=develop
    TRY
        ${json}=    Get File    smilles/config/${stage}.json
    EXCEPT
        ${json}=    Get File    smilles/config/${stage}.json
    END
    ${object}=   Evaluate    json.loads('''${json}''')    json
    FOR    ${key}    IN    @{object}
        Set Environment Variable    ${key}    ${object["${key}"]}
        Log    ${object["${key}"]}
    END

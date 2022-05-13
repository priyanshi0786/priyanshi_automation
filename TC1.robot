*** Settings ***
Library  SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}  chrome
${url}  https://www.google.com/
${path}     C:/Users/prisaxen4/PycharmProjects/AutomationNew/TestCases/link2.txt

*** Test Cases ***
PrintingLinksTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    xpath://input[@class='gLFyf gsfi']
    Input Text    //input[@class='gLFyf gsfi']    robotframework
    Click Element    (//input[@value='Google Search'])[1]
    ${AllLinksCount}=   Get Element Count    xpath://div[@class='jtfYYd']//div[@class='yuRUbf']/a
    Log To Console    ${AllLinksCount}
    @{AllLinks}     Create List

    FOR    ${i}    IN RANGE    1    ${AllLinksCount}+1
        ${linkText}=    Get Text    xpath:(//div[@class='jtfYYd']//div[@class='yuRUbf']/a)[${i}]
        Log To Console    ${linkText}

        Append To List  ${AllLinks}     ${linkText}

    END

    Create File    ${path}
    FOR    ${i}    IN   @{AllLinks}
        Append To File    ${path}  ${i}
    END

    Close Browser


*** Keywords ***

*** Settings ***
Library    RPA.Browser.Selenium

*** Variables ***
${LOGIN_BUTTON}            //*[@id="app"]/div/div/div/div/div[3]/div[1]/div[2]/button
${LOGIN_EMAIL_INPUT}       van-field-3-input


*** Test Cases ***
LoginTest
    Open Browser    <URL>    chrome    Auto${True}
    Click Button When Visible    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    xpath=//input[@id='van-field-1-input']
    Input Text    xpath://input[@id='van-field-1-input']    <INPUT_ID>    ${True}
    Click Element    xpath=//*[local-name()='svg' and @data-cy='email-submit']
    Wait Until Element Is Visible    //input[@id='codeInput']
    Press Keys    None    <THE_PASS>
    Click Element    xpath=//*[local-name()='svg' and @data-cy='pin-submit']

*** Settings ***
Library    SeleniumLibrary 
 
Suite Setup       Log    This TS suite executing before
Test Teardown     Close Browser  
Test Setup        loginPage
Suite Teardown    Log    This TS is executing after suite

Default Tags    Sanity

*** Variables ***
${URL}  https://qafreeway.syntoniccsp.com/developer_admin_sessions/new
@{CREDENTIALS}  tmpacc98104@gmail.com     Qwerty@12

${file}   ${CURDIR}${/}Staging_ClaimAPI_Sheet.xlsx
${sheet}  ABC


*** Test Case ***
case
    Should Be Equal As Integers    4    4
*** Keywords ***
loginPage
    Open Browser           ${URL}    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5
    Set Browser Implicit Wait    5
    Input Text      id=developer_admin_session_email    @{CREDENTIALS}[0]
    Input Text      id=developer_admin_session_password    @{CREDENTIALS}[1]
    Click Button    id=login_submit   
    sleep           6s 
    
    
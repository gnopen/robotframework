*** Settings ***
Documentation       Template robot main suite.

Resource            resource/locator_login.robot
Resource            resource/locator_common.robot

Test Template        Login With Valid And Invalid Credentials

Test Setup          Initialize

*** Test Cases ***
Invalid Username      invalid   p@ssword24  

Invalid Password      admin@gmail.com   invalid 

Invalid Username and Password  invalid   invalid 

Long Email           adminkentang12314141414adminkentang12314141414adminkentang12314141414adminkentang12314141414adminkentang12314141414adminkentang12314141414@gmail.com   p@ssw0rd24

Empty Username        ${EMPTY}  p@ssw0rd24

Empty Username And Password  ${EMPTY}  ${EMPTY}

Empty Password       admin@gmail.com  ${EMPTY}
    

*** Keywords ***
Login With Valid And Invalid Credentials
    [Arguments]    ${username}    ${password}
    Access Login Form
    Input Username Front End    ${username}
    Input Password Front End    ${password}
    Submit Credentials

    
   
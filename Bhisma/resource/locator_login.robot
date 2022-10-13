*** Settings ***

Library  RPA.Browser.Selenium
Variables  variable/common.py

*** Keywords ***

Access Login Form
    Click Element If Visible    //a[contains(text(),"Masuk / Daftar")]
    Set Browser Implicit Wait     ${DELAY}    

Input Username Front End
    [Arguments]   ${username}
    Input Text    //*[@name='input-email']     ${username}

Input Password Front End
    [Arguments]   ${password}
    Input Text    //*[@name='input-password']    ${password}

Submit Credentials
    Click Button    //button[@id='login-button']

Email Alert
    ${emailalert}  Get Text   //p[@id='email-alert']

Password Alert 
    ${passwordalert}  Get Text   //p[@id='password-alert']



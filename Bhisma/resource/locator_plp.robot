*** Settings ***

Library  RPA.Browser.Selenium
Variables  variable/common.py

*** Keywords ***

Check Product Name PLP
    [Arguments]   ${expected}
    ${productname}  Get Text   //p[@id='email-alert']

Click Product Name PLP
    [Arguments]   ${expected}
    Sleep    ${DELAY}
    ${locator} =  Catenate  //span[@title ='${expected}']
    Click Element   ${locator}
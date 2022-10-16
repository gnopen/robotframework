*** Settings ***

Library  RPA.Browser.Selenium
Variables  variable/common.py

*** Keywords ***

Initialize
    #Create Webdriver    Chrome  executable_path=chromedriver.exe
    Open Browser  ${WEBSITE_URL}  ${BROWSER}
    Maximize Browser Window
    Sleep    ${DELAY}

CloseDown
    Close Browser

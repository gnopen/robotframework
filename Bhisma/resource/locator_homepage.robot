*** Settings ***

Library  RPA.Browser.Selenium
Variables  variable/common.py

*** Keywords ***

Input Text on Search Function
    [Arguments]      ${product}
    Input Text       //*[@name='search-form']    ${product}
    Press Keys       //*[@name='search-form']     ENTER
    Screenshot
    Sleep            ${DELAY}

Header Navigation

Highlight

Warehouse Selection

Category

SLA Checker

Video Integration Checker

Brands Checker

Testimonial Checker

Subscription Checker

Footer

Payment Checker

Shipping Checker

Social Media Checker


    
    
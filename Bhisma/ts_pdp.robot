*** Settings ***

Documentation       Robot Login Logout
Resource            resource/locator_pdp.robot
Resource            resource/locator_plp.robot
Resource            resource/locator_homepage.robot
Resource            resource/locator_common.robot
# Suite Setup         Initialize
# Suite Teardown      CloseDown
Test Setup          Initialize
Test Template       Search Function Product
Variables           data/data_pdp.py

*** Test Cases ***               product                      Description                   Vendor              Stock                 Warehouse 
Invalid Product                  ${PRODUCT}[0]                ${DESCRIPTION}[0]             Sony               100                 Serpong
    [Tags]  Full Testing

Product Name Special Character   ${PRODUCT}[1]                ${DESCRIPTION}[1]             Belia              100                Serpong
    [Tags]  Full Testing

Product Vendor is Inactive      ${PRODUCT}[2]                 ${DESCRIPTION}[2]             Belia              100                Serpong
    [Tags]  Full Testing

Product Stock is Empty          ${PRODUCT}[3]                 ${DESCRIPTION}[3]             Belia              100                 Serpong
    [Tags]  Full Testing        

SKU Search                      ${PRODUCT}[4]                 ${DESCRIPTION}[4]            Belia               100                 Serpong
    [Tags]  Full Testing         

Normal Product                  ${PRODUCT}[5]                 ${DESCRIPTION}[5]             Belia                 100                 Serpong
    [Tags]  Full Testing

*** Keywords ***

Search Function Product
    [Arguments]    ${product}   ${description}   ${vendor}   ${stock}   ${warehouse}
    Input Text on Search Function   ${product}
    Click Product Name PLP        ${product}
    Check Product Name            ${product}
    Check Description             ${description}
    Check Brand Name              ${vendor}
    Check Stock                   ${stock}
    Check Warehouse               ${warehouse}


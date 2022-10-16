*** Settings ***

Documentation       Robot Login Logout
Resource            resource/locator_login.robot
Resource            resource/locator_common.robot
Resource            resource/locator_pdp.robot
Resource            resource/locator_plp.robot
Resource            resource/locator_cart.robot
Resource            resource/locator_homepage.robot


# Suite Setup         Initialize
# Suite Teardown      CloseDown
Test Setup          Initialize
Test Template       Search Function Product
Variables           data/data_pdp.py


*** Test Cases ***               product        Subtotal  Pengiriman  Hemat   QTY   
Invalid Product                ${PRODUCT}[0]      ${SUBTOTAL}[0]   ${PENGIRIMAN}[0]  ${HEMAT}[0]    100  
    [Tags]  Full Testing


#     FOR    ${row}    IN    @{ROWS}
#     Initialize
#     Access Login Form
#     Input Username Front End    ${row}[2]
#     Input Password Front End    ${row}[3]
#     Submit Credentials
#     Close Browser
    
# # [${row}[1]]     ${row}[2]   ${row}[3]
# #     [Tags]  ${row}[4]
# #     Log  "INI ROW 1 " ${row}[1]
#     END



*** Keywords ***

Search Function Product
    [Arguments]     ${productname}   ${subtotal}   ${pengiriman}   ${hemat}  ${qty}
    Login Front End
    Input Text on Search Function   ${productname}
    Click Product Name PLP        ${productname}
    Add to Cart 
    Continue to Cart
    Check Subtotal                ${subtotal}
    Check Pengiriman             ${pengiriman}
    Check Hemat                    ${hemat}
    Check Grand Total            ${qty}
    Continue to Payment

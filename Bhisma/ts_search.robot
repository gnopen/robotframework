*** Settings ***

Documentation       Robot Login Logout
Resource            resource/locator_homepage.robot
Resource            resource/locator_common.robot
# Suite Setup         Initialize
# Suite Teardown      CloseDown
Test Setup          Initialize
Test Template       Search Function Product



*** Test Cases ***               product       
Invalid Product                 invalid         
    [Tags]  Full Testing

Product Name Special Character   Marthatilaarshop !&()[]./        
    [Tags]  Full Testing

Product Vendor is Inactive       Marthatilaarshop !&()[]./
    [Tags]  Full Testing

Product Stock is Empty            Jeans0002
    [Tags]  Full Testing         

SKU Search                        Jeans0004
    [Tags]  Full Testing          

Normal Product                    Buku 1
    [Tags]  Full Testing

*** Keywords ***

Search Function Product
    [Arguments]    ${product}
    Input Text on Search Function   ${product}


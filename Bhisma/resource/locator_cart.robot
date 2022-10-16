*** Settings ***

Library  RPA.Browser.Selenium
Variables  variable/common.py


# Library  TEST.py

*** Keywords ***

Check Subtotal
    [Arguments]   ${expected}
    Sleep    ${DELAY}
    ${productname}  Get Text   //div[@class='subtotal']/span[@class='value']
 
    Should Be Equal As Strings    ${expected}    ${productname}

Check Pengiriman
    [Arguments]   ${expected}
    ${brand}  Get Text   //div[@class='shipping-box']/span[@class='value']
    Should Be Equal As Strings    ${expected}    ${brand}

Check Hemat
    [Arguments]   ${expected}
    ${currentprice}  Get Text   //div[@class='discount']/span[@class='value']
    Should Be Equal As Strings    ${expected}    ${currentprice}

Check Grand Total
    [Arguments]   ${expected}
    ${description}  Get Text   //div[@class='grand-total']/span[@class='grand-value']
    Should Be Equal As Strings    ${expected}    ${description}

Check Single Product
    [Arguments]   ${expected}
    ${warehouse}  Get Text   //*[@class='items'] 
    ${result} =  Catenate   Warehouse ${expected}
    Should Be Equal As Strings    ${result}    ${warehouse}

Check Price Progressive

Check Multiple Product

Check Voucher Code

Check Wishlist

Delete Product From Cart

Check Stock Cart

Continue to Payment
    Sleep    ${DELAY}
    Click Element    //*[@class = 'btn-continue']
*** Settings ***

Library  RPA.Browser.Selenium
Variables  variable/common.py

*** Keywords ***

Check Product Name
    [Arguments]   ${expected}
    Sleep    ${DELAY}
    ${productname}  Get Text   //div[@class='information']/div[@class='title']/span[1]
    Should Be Equal As Strings    ${expected}    ${productname}

Check Brand Name
    [Arguments]   ${expected}
    ${brand}  Get Text   //div[@class="information"]/div[@class="brand"]/span[1]
    Should Be Equal As Strings    ${expected}    ${brand}

Check Current Price
    [Arguments]   ${expected}
    ${currentprice}  Get Text   //*[@class='current'] 
    Should Be Equal As Strings    ${expected}    ${currentprice}

Check Review Testimonial

Check Review Score

Check Description 
    [Arguments]   ${expected}
    ${description}  Get Text   //*[@class='description'] 
    Should Be Equal As Strings    ${expected}    ${description}

Check Warehouse
    [Arguments]   ${expected}
    ${warehouse}  Get Text   //*[@class='items'] 
    ${result} =  Catenate   Warehouse ${expected}
    Should Be Equal As Strings    ${result}    ${warehouse}

Check Stock
    [Arguments]   ${expected}
    ${stock}  Get Text   //*[@class='stock-info'] 
    ${result} =  Catenate   Stock Tersedia ${expected}
    Should Be Equal As Strings    ${result}    ${stock}

Check Point 

Check Share 
    Click Element    //span[contains(text(),'share')]


Add to Cart    
    Click Element   //*[@class='btn-cart']    

Add to Wishlist 
    Click Element   //*[@class='button__text']    


Condition1
    Log    Passed

Condition2    
    Log    Output contains FAIL

Continue to Cart
    Sleep    ${DELAY}
    Click Element    //*[@class = 'btn-continue-cart']
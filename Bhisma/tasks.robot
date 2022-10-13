*** Settings ***
Documentation       Template robot main suite.

Resource            resource/locator_login.robot
Resource            resource/locator_common.robot

Test Template        Login With Valid And Invalid Credentials

Library  Collections
Library  library/LoginExchangeLib.py  WITH NAME  one
Library  library/LoginExchangeLib.py  WITH NAME  two



*** Test Cases ***
MyTest
    

 

*** Keywords ***
Login With Valid And Invalid Credentials
    [Arguments]

    
   
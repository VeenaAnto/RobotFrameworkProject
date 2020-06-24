*** Settings ***
Library    SeleniumLibrary
Suite Setup    Log    Inside TestSuite
Suite Teardown    Log    Inside Suite Teardown
Test Setup    Log    Inside Test
Test Teardown    Log    Inside Test Teardown

*** Test Cases ***
MyFirstTest
    Log    Welcome To RobotFramework...    
FirstSeleniumTest
    Open Browser    ${URL}    chrome
    Set Browser Implicit Wait    20
    Input Text    id=userid    ${CREDENTIALS1}
    Input Text    id=password    ${CREDENTIALS2}
    Click Button    id=btnActive 
    Wait Until Page Contains    Welcome    
    Title Should Be    Welcome    Page Title Verified
    Capture Page Screenshot    WelcomePage.png    
    Click Element    xpath=//*[name()='path' and contains(@class,'svg-icon03')]    
    Click Element    id=pt1:nv_itemNode_manager_resources_manage_users    
    Wait Until Page Contains Element    xpath=//input[@id='_FOpt1:_FOr1:0:_FOSritemNode_manager_resources_manage_users:0:_FOTsr1:0:AP1:qq1:criterionValue0::content']
    Click Element    xpath=//input[@id='_FOpt1:_FOr1:0:_FOSritemNode_manager_resources_manage_users:0:_FOTsr1:0:AP1:qq1:criterionValue0::content']
    Input Text    xpath=//input[@id='_FOpt1:_FOr1:0:_FOSritemNode_manager_resources_manage_users:0:_FOTsr1:0:AP1:qq1:criterionValue0::content']      Veena    
    Click Element    //a[@id='_FOpt1:_FOr1:0:_FOSritemNode_manager_resources_manage_users:0:_FOTsr1:0:AP1:qq1::search_icon']
    Click Element    xpath=//a[@id='_FOpt1:_FOr1:0:_FOSritemNode_manager_resources_manage_users:0:_FOTsr1:0:AP1:gallerySearchVOCriteriaQueryResultId:_ATp:table1:0:ot3']
    Log    Verify fetched User details
    Capture Page Screenshot    Userdetails_screenshot.png
    Click Element    xpath=//span[contains(text(),'ave and Close')]
    Log    Clicked on Save button
    Close Browser
    Log    Test Completed
    
*** Variables ***
${URL}    https://enod-dev1.fa.em2.oraclecloud.com/  
${CREDENTIALS1}    Veena.Anto@resmed.com    
${CREDENTIALS2}    Resmed123          
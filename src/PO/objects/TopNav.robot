*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${MEGA_MENU} =  //nav/ul



*** Keywords ***
Mega menu is displayed
    element should be visible  ${MEGA_MENU}


Menu contains
    [Arguments]  ${CUSTOM_SEARCH}
    element should be visible  //nav/ul/li/a[contains(.,'${CUSTOM_SEARCH}')]




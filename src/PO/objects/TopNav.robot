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

Click on menu
    [Arguments]  ${MENU_1LVL}  ${MENU_BRAND}  ${MENU_ITEM}
    mouse over  //nav/ul/li/a[contains(text(),"${MENU_1LVL}")]
    click element  //a[contains(text(),"${MENU_1LVL}")]/following::a[contains(text(),'${MENU_BRAND}')]/following::ul/li/a[contains(.,'${MENU_ITEM}')]
    wait until element is visible  //nav/ul/li/a[contains(text(),"${MENU_1LVL}")]

Click on menu Brands
    [Arguments]  ${MENU_BRAND}  ${MENU_ITEM}
    mouse over  //nav/ul/li/a[contains(text(),"Brands")]
    click element  //nav/ul/li/a[contains(text(),"Brands")]/ancestor::li//div/h3[text()='${MENU_BRAND}']//parent::div/ul/li/a[text()='${MENU_ITEM}']
    wait until element is visible  //nav/ul/li/a[contains(text(),"Brands")]
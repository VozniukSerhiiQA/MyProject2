*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FOOTER} =  //footer/div[@class='wrap']
${FOOTER_INFO} =  //footer/div/section[@class='info']
${FOOTER_LINKS} =  //footer/div/section[@class='site-links']


*** Keywords ***
Footer is displayed
    mouse down  ${FOOTER}
    element should be visible  ${FOOTER}

Footer has INFO section
    mouse down  ${FOOTER_INFO}
    element should be visible  ${FOOTER_INFO}

Footer has LINKS section
    mouse down  ${FOOTER_LINKS}
    element should be visible  ${FOOTER_LINKS}


Footer contains section
    [Arguments]  ${FOOTER_LINKS_SECTIONS}
    element should be visible  //footer//p[@class='siteLinks' and contains(.,'${FOOTER_LINKS_SECTIONS}')]

Footer contains text
    [Arguments]  ${FOOTER_LINKS_LIST}
    element should be visible  //footer//a[contains(.,'${FOOTER_LINKS_LIST}')]

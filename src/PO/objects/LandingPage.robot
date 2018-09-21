*** Settings ***
Library  SeleniumLibrary

Resource  vars.robot

*** Variables ***
${LANDING_GRID} =  //div[@class='homepageGrid gridGeneral']



*** Keywords ***
Navigate to
    go to  ${URL}

Verify Home Page Elements
    wait until page contains element  ${LANDING_GRID}

Brand list has
    [Arguments]  ${LANDING_GRID_BRANDS}
    element should be visible  //div[@class='brand-logo']/a/h4[contains(.,'${LANDING_GRID_BRANDS}')]

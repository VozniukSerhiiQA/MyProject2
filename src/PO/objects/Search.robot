*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Search_input} =  //input[@id='search-input']
${Search_button} =  //form[@id='search']/button

*** Keywords ***
Search item
    [Arguments]  ${SEARCH_TEXT}
    wait until page contains element  ${Search_input}
    element should be visible  ${Search_input}
    click element  ${Search_input}
    input text  //input[@id='search-input']  ${SEARCH_TEXT}
    click element  ${Search_button}
    wait until element is visible  ${Search_input}
    wait until page contains element  //ol[@class="breadcrumbs"]

Breadcrumb is displayed
    [Arguments]  ${BREADCRUMB}  ${BREADCRUMB_DEEP}
    element should contain  //li/meta[@content='${BREADCRUMB_DEEP}']/..//span[contains(text(),'${BREADCRUMB}')]  ${BREADCRUMB}
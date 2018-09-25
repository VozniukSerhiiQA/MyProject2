*** Settings ***
Documentation  Talk about what this suite of tests does
Library  SeleniumLibrary  timeout=10  implicit_wait=1.5  run_on_failure=Capture Page Screenshot
Library  String


Resource  CommonWeb.robot
Resource  vars.robot
Resource  objects/LandingPage.robot
Resource  objects/Footer.robot
Resource  objects/TopNav.robot




*** Keywords ***
Search Result Page is displayed
    wait until element is visible  //section[@class='product-list product_list j-product_list']
    ${count}=  get element count  //div[@class='pagination-sort']
    should be equal as integers  ${count}  2

Filter is displayed
    [Arguments]  ${FILTER_NAME}
    wait until element is visible  //section[@class='facets']//h3[contains(text(),'${FILTER_NAME}')]

Category list contains
    [Arguments]  ${CUSTOM_SEARCH}
    wait until element is visible  //div[@id='nav-categories']
    wait until element is visible  //div[@id='nav-categories']/h3[contains(text(),'${CUSTOM_SEARCH}')]

Product matching should be more than one
    wait until element is visible  //article[@id='searchResults']/p/strong
    ${get_value}=  get text  //article[@id='searchResults']/p/strong
    ${get_value2}= 	Encode String To Bytes	${get_value}  UTF-8
    should be true  ${get_value2}>1

Sort by
    [Arguments]  ${SORT_BY}  ${SORT_TYPE}
    wait until element is visible  //div/form/select[@id='sortOptions1']
    mouse over  //div/form/select[@id='sortOptions1']
    element should be visible  //div/form/select[@id='sortOptions1']
    click element  //div/form/select[@id='sortOptions1']/option[contains(text(),'${SORT_BY}')]
    Search Result Page is displayed
    ${get_url}=  get location
    ${cut_url}=  fetch from right  ${get_url}  price-
    Log  ${cut_url}
    should be equal as strings  ${cut_url}  ${SORT_TYPE}

Verify Product on grid
    [Arguments]  ${PRODUCT_NAME}  ${PRODUCT_DESCTRIPTION}


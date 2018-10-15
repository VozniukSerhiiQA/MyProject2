*** Settings ***
Library  XML
Library  BuiltIn

*** Variables ***
${XML_CATALOG_PATH} =  C:/Projects/MyProject/inputs/xml/catalog.xml
${EXPECTED_CATALOGS_COUNT} =  1
${EXPECTED_PRODUCT_COUNT} =  3


*** Keywords ***
Should be 1 catalog in XML
    #getting a count of how many elements are in the file
    ${catalog_count} =  Get Element Count  ${XML_CATALOG_PATH}
    Should Be Equal As Numbers  ${catalog_count}  ${EXPECTED_CATALOGS_COUNT}

Verify Catalog Name
    #we will return a root and then calculate the result
    ${root} =  Parse XML  ${XML_CATALOG_PATH}
    Should Be Equal  ${root.tag}  catalog_menu

Verify quantity of products
    ${product_count} =  Get Element Count  ${XML_CATALOG_PATH}  product
    Should Be Equal As Numbers  ${product_count}  ${EXPECTED_PRODUCT_COUNT}

Verify First Name of product
    ${first_product_name} =  Get Element  ${XML_CATALOG_PATH}  product[1]/name
    should be equal as strings  ${first_product_name.text}  iPhone10

Verify First Price of product
    ${first_product_price} =  Get Element  ${XML_CATALOG_PATH}  product[1]/price
    should be equal as strings  ${first_product_price.text}  $999.95

Verify First Release Date of product
    ${first_product_releasedate} =  Get Element  ${XML_CATALOG_PATH}  product[1]/ReleaseDate
    should be equal as strings  ${first_product_releasedate.text}  2017


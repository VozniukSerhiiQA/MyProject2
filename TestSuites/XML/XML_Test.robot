*** Settings ***
Documentation    XML test
Metadata  Version  1.0
Metadata  Author   Serhii Vozniuk
Metadata  Executed at  ${XML_CATALOG_PATH}
Resource  ../../src/XML/XML_Catalog.robot

#pybot -d C:\Projects\MyProject\Reports TestSuites/XML/XML_Test.robot
#pybot -d C:\Projects\MyProject\Reports -i XML tests

*** Test Cases ***
Check count of catalogs
    [Tags]    XML
    Should be 1 catalog in XML

Check catalog name
    [Tags]    XML
    Verify Catalog Name

Check product quantity
    [Tags]    XML
    Verify quantity of products

Check First product
    [Tags]    XML
    Verify First Name of product
    Verify First Price of product
    Verify First Release Date of product
*** Settings ***
Documentation  Test related to Search elements
Metadata  Version  1.0
Metadata  Author   Serhii Vozniuk
Metadata  Executed at  ${URL}
Suite Setup  Start Web Test
Suite Teardown  End Web Test

Resource  ../src/PO/CommonWeb.robot
Resource  ../src/PO/Front_Office.robot
Resource  ../src/variables/vars.robot
Resource  ../src/PO/objects/LandingPage.robot
Resource  ../src/PO/objects/Footer.robot
Resource  ../src/PO/objects/TopNav.robot
Resource  ../src/PO/objects/Search.robot


*** Test Cases ***
Search Category in input field
    [Tags]    Priority 1
    Navigate to
    Verify Home Page Elements
    Search item  Azzaro
    Search Result Page is displayed

Breadcrumbs verification
    Breadcrumb is displayed  Home  1
    Breadcrumb is displayed  All Brands  2
    Breadcrumb is displayed  Azzaro  3

Filters verification
    Filter is displayed  Brand Name
    Filter is displayed  Product Line
    Filter is displayed  Product Type
    Filter is displayed  Price

Category verification
    Category list contains  Women
    Category list contains  Men
    Category list contains  New
    Category list contains  Gifts
    Category list contains  Offers
*** Settings ***
Documentation  Test related to Search elements
Metadata  Version  1.0
Metadata  Author   Serhii Vozniuk
Metadata  Executed at  ${URL}
Suite Setup  Start Web Test
Suite Teardown  End Web Test

Resource  ../../src/PO/CommonWeb.robot
Resource  ../../src/PO/Front_Office.robot
Resource  ../../src/variables/vars.robot
Resource  ../../src/PO/objects/LandingPage.robot
Resource  ../../src/PO/objects/Footer.robot
Resource  ../../src/PO/objects/TopNav.robot
Resource  ../../src/PO/objects/Search.robot


*** Test Cases ***
Search Category in input field
    [Tags]    Priority 1
    Navigate to
    Verify Home Page Elements
    Search item  Azzaro chrome
    Search Result Page is displayed
    Product matching should be more than one

Breadcrumbs verification
    Breadcrumb is displayed  Home  1
    Breadcrumb is displayed  Azzaro  2

Filters verification
    Filter is displayed  Brand Name
    Filter is displayed  Product Line
    Filter is displayed  Product Type
    Filter is displayed  Price

Sorting values
    Sort by  Price Low To High  asc
    Sort by  Price High To Low  desc
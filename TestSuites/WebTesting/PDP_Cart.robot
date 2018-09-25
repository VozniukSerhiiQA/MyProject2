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
    Click on menu Brands  Featured Brands  DIOR
    Click on menu Brands  Featured Brands  Versace
    Click on menu Brands  Brands A-Z  MUGLER
    Click on menu  Men's  Scents  Floral
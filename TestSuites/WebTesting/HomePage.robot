*** Settings ***
Documentation  Home page testing. Verifying elements on a page
Metadata  Version  1.0
Metadata  Author   Serhii Vozniuk
Metadata  Executed at  ${URL}
Test Setup  Start Web Test
Test Teardown  End Web Test

Resource  ../../src/PO/CommonWeb.robot
Resource  ../../src/PO/Front_Office.robot
Resource  ../../src/variables/vars.robot
Resource  ../../src/PO/objects/LandingPage.robot
Resource  ../../src/PO/objects/Footer.robot
Resource  ../../src/PO/objects/TopNav.robot
Resource  ../../src/PO/objects/Search.robot


*** Test Cases ***
Menu Verification
    [Tags]    Priority 1
    Navigate to
    Verify Home Page Elements
    Mega menu is displayed
    Menu contains  Brands
    Menu contains  Christmas Shop
    Menu contains  Women
    Menu contains  Men
    Menu contains  New
    Menu contains  Gifts
    Menu contains  Offers
    Menu contains  Stores & Services

Footer verification
    [Tags]    Priority 1
    Navigate to
    Verify Home Page Elements
    Footer is displayed
    Footer has INFO section
    Footer has LINKS section
    Footer contains section  Customer Services
    Footer contains section  Favourite Brands & Products
    Footer contains section  Your Perfume Shop
    Footer contains section  Corporate
    Footer contains text  Delivery/Click & Collect
    Footer contains text  Returns & Refunds
    Footer contains text  FAQs & Help
    Footer contains text  Contact Us
    Footer contains text  Store Finder
    Footer contains text  Help Centre

Search verification
    [Tags]    Priority 1
    Navigate to
    Verify Home Page Elements
    Search item  Azzaro

Company banner info
    [Tags]    Priority 1
    Navigate to
    Verify Home Page Elements
    Banner in bottom contains  Rewards Club
    Banner in bottom contains  Fragrance Finder
    Banner in bottom contains  Careers
    Banner in bottom contains  Charity
    Banner in bottom contains  Store Finder
    Banner in bottom contains  Student Discount

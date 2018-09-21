*** Settings ***
Documentation  My Test for TV with presentation Robot and Page Object model
Metadata  Version  1.0
Metadata  Author   Serhii Vozniuk
Metadata  Executed at  ${URL}
#Library  Selenium2Library  run_on_failure=Capture Page Screenshot
#Library  ExtendedSelenium2Library
Test Setup  Start Web Test
Test Teardown  End Web Test

Resource  ../src/PO/CommonWeb.robot
Resource  ../src/PO/Front_Office.robot
Resource  ../src/variables/vars.robot
Resource  ../src/PO/objects/LandingPage.robot
Resource  ../src/PO/objects/Footer.robot
Resource  ../src/PO/objects/TopNav.robot
Resource  ../src/PO/objects/Search.robot



*** Test Cases ***
Home Page Verification
    [Tags]    Short Test
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

 #   Brand list has  CHANEL
  #  Brand list has  TOM FORD
 #   Brand list has  DIOR
  #  Brand list has  Paco Rabanne
  #  Brand list has  CHANEL



Search
    Go to Landing page
    Search item  Azzaro
    Breadcrumb is displayed  Home  1
    Breadcrumb is displayed  All Brands  2
    Breadcrumb is displayed  Azzaro  3
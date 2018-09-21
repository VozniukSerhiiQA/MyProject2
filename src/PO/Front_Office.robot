*** Settings ***
Documentation  Talk about what this suite of tests does
Library  SeleniumLibrary  timeout=10  implicit_wait=1.5  run_on_failure=Capture Page Screenshot

Resource  CommonWeb.robot
Resource  vars.robot
Resource  objects/LandingPage.robot
Resource  objects/Footer.robot
Resource  objects/TopNav.robot




*** Keywords ***
Go to Landing page
    Navigate to
    Verify Home Page Elements

Check Mega Menu
    Mega menu is displayed
    Menu contains  Brands
    Menu contains  Sale
    Menu contains  Women
    Menu contains  Men
    Menu contains  New
    Menu contains  Gifts
    Menu contains  Offers
    Menu contains  Stores & Services

Check footer
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

Check list of brands on Home Page
    Brand list has  CHANEL
    Brand list has  TOM FORD
    Brand list has  DIOR
    Brand list has  Paco Rabanne
    Brand list has  CHANEL




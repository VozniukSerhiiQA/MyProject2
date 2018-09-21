*** Settings ***
Library  SeleniumLibrary
Resource  vars.robot

*** Keywords ***
Start Web Test
    open browser  about:blank  ${BROWSER}
    maximize browser window

End Web Test
    close all browsers

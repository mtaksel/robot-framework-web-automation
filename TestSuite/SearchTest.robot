*** Settings ***
Library    SeleniumLibrary
Resource    ../Test_Data/TestConfig.robot
Resource    ../Keywords/SearchKeywords.robot

*** Test Cases ***
Search for a Product Test
    Launch Application
    Accept Cookies
    Search Product
    Verify Product
    Close Browser Window

Select Firsts Product
    Launch Application
    Accept Cookies
    Search Product
    Select First Product
    Close Browser Window
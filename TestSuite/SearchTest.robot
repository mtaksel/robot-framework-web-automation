*** Settings ***
Library    SeleniumLibrary
Resource    ../Test_Data/TestConfig.robot
Resource    ../Keywords/SearchKeywords.robot

*** Test Cases ***
Search for a Product Test
    Launch Application
    Search Product
    Verify Product
    Close Browser Window
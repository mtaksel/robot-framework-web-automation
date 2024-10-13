*** Settings ***
Library    SeleniumLibrary
Resource    ../Test_Data/TestConfig.robot
Resource    ../Keywords/SearchKeywords.robot
Suite Setup
Suite Teardown

*** Settings ***
Test Teardown    Clear SUT To Initial State

*** Test Cases ***
Search for a Product Test
    Launch Application
    Search Product
    Close Browser Window


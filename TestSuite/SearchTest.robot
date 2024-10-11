*** Settings ***
Library    SeleniumLibrary
Resource    ../Test_Data/TestConfig.robot
Resource    ../Keywords/SearchKeywords.robot
Suite Setup
Suite Teardown

*** Settings ***
Test Teardown    Clear SUT To Initial State

*** Test Cases ***
Search Test
    Launch Application
    Search Product
    Clear SUT To Initial State


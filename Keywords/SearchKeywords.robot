*** Settings ***
Library    SeleniumLibrary
Resource    ../Test_Data/TestConfig.robot
Resource    ../Test_Data/SearchData.robot
Resource    ../Locators/locators.robot

*** Keywords ***
Launch Application
    Open Browser    ${URL}   ${BROWSER}
    Maximize Browser Window

Accept Cookies
    Click Button    ${ACCEPT_COOKIES}

Search Product
    # Enter Product Name In Search Box
    Input Text    ${SEARCH_BOX}    ${SearchKeyword}
    # Click Search Button To Perform Search
    Click Button    ${SEARCH_BUTTON}

Verify Product
    # Get the text of the search result
    ${actual}    Get Text    ${SEARCH_RESULTS}
    # Remove the search result "" characters
    ${actual}    Evaluate    ${actual}.strip()
    # Log the actual text
        Log    Actual Text: ${actual}
    # Verify that the search results are correct
    Should Be Equal    ${SearchKeyword}    ${actual}

Select First Product
    ${elements}    Get WebElements    //div[@class='a-section a-spacing-none a-spacing-top-small s-title-instructions-style']
    FOR    ${element}    IN    ${elements}
           ${text}    Get Text    ${element}[0]
              Log    ${text}
           Click Button        ${element}[0]
    END

Close Browser Window
    Close Browser
*** Variables ***
    # Amazon home page search bar element
${SEARCH_BOX}    //input[@id='twotabsearchtextbox']

    # Amazon search button element
${SEARCH_BUTTON}    //input[@id='nav-search-submit-button']

    # Search results element
${SEARCH_RESULTS}    xpath=//span[@class="a-color-state a-text-bold" and contains(text(), 'macbook pro m2')]



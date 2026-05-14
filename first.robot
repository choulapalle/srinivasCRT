*** Settings ***
Library                     QWeb
Suite Setup                 OpenBrowser    about:blank    chrome


*** Variables ***
${LOGIN URL} https://parabank.parasoft.com/parabank/index.htm


*** Test Cases ***
Login to Application
    [Documentation]         this is Login test case for parabank
    [Tags]                  smoke


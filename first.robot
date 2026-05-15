*** Settings ***
Library                QWeb
Suite Setup            OpenBrowser                 about:blank       chrome

*** Variables ***
${BANK_URL}            https://parabank.parasoft.com/parabank/index.htm

*** Test Cases ***
Login To Application
    [Documentation]    this is Login test case for parabank
    [Tags]             smoke
    GoTo               ${BANK_URL}
    ClickText          Register
    VerifyText         Signing up is easy!
    TypeText           First Name                  Copado
    TypeText           Last Name                   Copado1
    TypeText           Address                     12345
    TypeText           City                        dallas
    TypeText           State                       Texas
    TypeText           Zip Code                    75189
    TypeText           Phone #                     1234567890
    TypeText           SSN                         123-223-3335
    TypeText           Username                    Copadouser        anchor=SSN
    TypeText           Password                    Copadouser        anchor=Confirm
    TypeText           Confirm                     Copadouser
    ClickText          REGISTER                    anchor=Confirm


    Open New Account
    ClickText    Open New Account





*** Settings ***
Documentation    Contains all the RUN specific params and actions.
Library    SeleniumLibrary

*** Keywords ***
Start
    [Arguments]    ${URL}   ${BROWSER}
    Open Browser    ${URL}    browser=${BROWSER}
    Maximize Browser Window

Stop
    Close Browser
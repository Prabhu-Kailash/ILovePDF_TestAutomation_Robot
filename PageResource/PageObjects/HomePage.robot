*** Settings ***
Documentation    Contains all the Home Page Web Elements/Objects
Library    SeleniumLibrary

*** Keywords ***
Confirm Home Page Loaded
    [Documentation]     Confirms once home page is loaded
    Element Should Be Visible    xPath://a[@title="PDF to Word"]

Click PDF2Word
    [Documentation]     Clicks on the PDF to Word converter option
    Click Element    xPath://a[@title="PDF to Word"]
*** Settings ***
Documentation    Contains all the PDF2Word Page Web Elements/Objects

Library    SeleniumLibrary
Library         OperatingSystem

*** Keywords ***
Confirm PDF2Word Page Loaded
    [Documentation]     Confirms once PDF2Word Page is loaded
    Element Should Be Visible    xPath://a[@id="pickfiles"]

Select PDF File
    [Documentation]     Prompts to select PDF file
    Click Element    xPath://a[@id="pickfiles"]

Upload PDF File
    [Documentation]     Uploads a PDF file to website
    [Arguments]     ${FilePath}
    Choose File     xPath://input[@type="file"]    ${FilePath}
    Wait Until Element Is Visible      xPath://button[@id="processTask"]

Click Convert To Word And Downloads Word File
    [Documentation]     Clicks on Convert to Word button
    Click Button    xPath://button[@id="processTask"]

Confirm Word File Downloaded
    [Documentation]     Confirm PDF to Word converted file is successfully downloaded
    [Arguments]     ${FilePath}
    Wait Until Created   ${FilePath}    timeout=60
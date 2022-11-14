*** Settings ***
Documentation    This Test Suite contains all the test cases being executed on ilove PDF Website.

Resource    ../PageResource/RunParams.robot
Resource    ../PageResource/PageObjects/HomePage.robot
Resource    ../PageResource/PageObjects/PDF2WordPage.robot

Suite Setup    Start    https://www.ilovepdf.com/    Edge
Suite Teardown    Stop

*** Test Cases ***
Site accessibility
    [Documentation]  Site Accessibility Test
    [Tags]  Smoke
    Confirm Home Page Loaded

File Upload PDF To Word
    [Documentation]  Confirms successful file upload to PDF to Word generator
    [Tags]  Critical    Upload   File
    Click PDF2Word
    Confirm PDF2Word Page Loaded
    Upload PDF File     ${EXECDIR}/Kailash_Python_Automation.pdf

Word File Download
    [Documentation]  Confirms successful file download of word file generator
    [Tags]  Critical    Download    File
    ${home_dir}         Get Environment Variable    UserProfile
    ${download_dir}     Join Path   ${home_dir}     Downloads
    Click Convert To Word And Downloads Word File
    Confirm Word File Downloaded    ${download_dir}/Kailash_Python_Automation.docx
    
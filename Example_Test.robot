*** Settings ***
Documentation       Example using the space separated plain text format.
Library             OperatingSystem
Library             resource/LoginPage.py
Library             SeleniumLibrary
Library             CSVLib
Library             resource/csvLibrary.py
Library             BuiltIn
Suite Setup         Generic Suite Setup
Suite Teardown      Generic Suite Teardown
# Test Teardown       Generic Test Teardown
Resource            resource/common.robot

*** Variables ***
${MESSAGE}       Hello, world!
${global_timeout}       20s
${global_browser}       Chrome
${global_base_url}      file:///C:/Users/hemel wifi/Desktop/Automation/Robot_POC/PYwithROBOT/Sample_HTML.html
${testdata}             C:/Users/hemel wifi/Desktop/Automation/Robot_POC/PYwithROBOT/sample_testdata.csv

*** Test Cases ***
# Test this
    # Enter into text field    ${MESSAGE}

# Login with valid credentials
#     # Open Browser  ${global_base_url}  ${global_browser}
#     [Tags]  tagA
#     Login as a normal user
#     # Close Browser

# Hello Python
#     [Tags]  tagB
#     Login as a normal user

Reading a csv file
    [Tags]  tagC
    FOR    ${INDEX}    IN    1    2
        ${INDEX}=  Convert To Integer  ${INDEX}
        ${row_number}   Set Variable    ${INDEX}        # Convert To Integer    1
        ${user_info}=   read cell value by row    ${testdata}    ${row_number}
        ${username}    Get From Dictionary    ${user_info}    username
        Log To Console    ${username}
        ${password}    Get From Dictionary    ${user_info}    password
        Log To Console    ${password}
        Login as a normal user
        Login Details
        Run Keyword  If ${main_message} == 'id=main-message'    Continue For Loop
    END

*** Keywords ***
Login Details
    Input Text    ${login_username_textbox}    ${username}
    Input Text    ${login_password_textbox}    ${password}


    # ${all users}=    Read CSV File    ${testdata}
    # :FOR  ${user}   IN   @{all users}
    # \    Log To Console  @{user}[0] - @{user}[1]
    # \    ${username}  @{user}[0]
    # \    ${password}  @{user}[1]
    # \    Login as a normal user

    # ${File}=    Get File  \\sample_testdata.csv
    # @{list}=    Split to lines  ${File}     
    # :FOR    ${line}  IN  @{list}
    # \   ${Value}=   Get Variable Value  ${line}
    # \   Log To Console  ${Value}
    
    

    # ${username}       ${datareturned}[0]
    # log to console    ${datareturned}[1]
    # ${password}       ${datareturned}[1]

    # log to console    ${username}

    # Login as a normal user

    # Log To Console  ${testdata}
    # ${data} = read csv file   ${testdata}
    # log   ${data}

    # ${singlelist}=		Read CSV As Single List		${testdata}
	# log to console		${singlelist}

    # ${list}=		read csv as list		${testdata}
	# log to console    ${list}
    # ${datareturned}=  loop  ${list}
    
    # log to console    ${datareturned}
    # log to console    ${datareturned}[0]
   # ${username}       ${datareturned}[0]
    # log to console    ${datareturned}[1]
   # ${password}       ${datareturned}[1]

    # log to console    ${username}

    # Login as a normal user

    # ${FILE_CONTENT}=   Get File    ${testdata}
    # log to console    File Content: ${FILE_CONTENT}
    # @{LINES}=   Split to Lines and Remove Header   ${FILE_CONTENT}
    # log to console    ${LINES}

    # ${RESULT}=    Set Variable    0
    # : FOR    ${LINE}    IN    @{LINES}
    # \    log to console    ${LINE}
    # \    @{COLUMNS}=    Split String    ${LINE}    separator=,
    # \    ${VALUE}=    Get From List    ${COLUMNS}    1
    # log to console    ${VALUE}
*** Settings ***
Documentation       Example using the space separated plain text format.
Library             OperatingSystem
Library             resource/LoginPage.py
Library             SeleniumLibrary

*** Variables ***
${MESSAGE}       Hello, world!
${USERNAME}      LEELA
${PASSWORD}      HELL
${global_timeout}       20s
${global_browser}       Chrome
${global_base_url}      file:///C:/Users/Deepak/Desktop/hello.html

*** Test Cases ***
# Test this
    # Enter into text field    ${MESSAGE}
Login with valid credentials
    Open Browser  ${global_base_url}  ${global_browser}
    Login as a normal user
    Close Browser
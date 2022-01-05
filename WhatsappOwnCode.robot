*** Settings ***
Library    RPA.Browser
Library    Process

*** Variables ***
${phone_no}=  91913031XXXX
${message}=  Hello World!

*** Keywords ***
Send Message AttachBrowser
    [Arguments]  ${phone_no}   ${message}
    #RPA.Browser.Close All Browsers
    Process.Run Process    %{ROBOT_ROOT}/scripts/killChromeAllInstances.bat
    Sleep    2
    Process.Run Process    %{ROBOT_ROOT}/scripts/chrome_remote_devtools.bat
    Sleep    2
    RPA.Browser.Attach Chrome Browser    9222
    RPA.Browser.Go To  https://api.whatsapp.com/send/?phone=${phone_no}&text=${message}
    RPA.Browser.Maximize Browser Window
    RPA.Browser.Set Selenium Timeout    30
    Sleep    2
    RPA.Browser.Click Element    //a[@id='action-button']
    Sleep    2
    RPA.Browser.Click Element    //a[normalize-space()='use WhatsApp Web']
    Sleep    20
    RPA.Browser.Click Element    //button[@class='_4sWnG']


# +
#*** Tasks ***
#Main Task1
#    Send Message AttachBrowser    ${phone_no}    ${message}

*** Settings ***
Documentation    İsin Olsun
Resource  ./po/isinOlsun.robot

*** Keywords ***
Test Case Search Jobs and Location
    Open Browser To Index Page
    Enter Job Name
    Enter Location Name
    Click IsBul Button
    Check Title

Test Case 3 Mobile App
    Open Browser To Index Page
    Scroll to the Features
    Sleep   2s

Test Case Filter Features
    Open Browser To Index Page
    Enter Job Name
    Enter Location Name
    Click IsBul Button
    check the job search page
    ${FirstValue}=  Get Text    css=[class='jsx-3033598793 total-title'] b
    sleep  3s
    click the date filter
    click the working type filter
    ${SecondValue}=  Get Text    css=[class='jsx-3033598793 total-title'] b
    Should Be True  ${FirstValue}>${SecondValue}
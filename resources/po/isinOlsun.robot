*** Settings ***
Documentation    Search Test
Library  SeleniumLibrary

*** Variables ***
${URL}      https://isinolsun.com/
${BROWSER}        chrome
${DashboardTitle}   Kadıköy Garson İş İlanları & Eleman Arayan Firmalar | İşin Olsun
${JobName}  Garson
${LocationName}     Kadıköy

*** Keywords ***
Open Browser To Index Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Check Title
    Title Should Be   ${DashboardTitle}

Enter Job Name
    Input Text  css=[name="kw"]  ${JobName}
    Press Keys    None    TAB

Enter Location Name
    Input Text  xpath://*[@data-test="location-search-input"]  ${LocationName}
    Press Keys    None    TAB

Click IsBul Button
    Click Button    xpath://button[@data-test="main-search-button"]

Scroll to the Features
    Scroll Element Into View    xpath://p[contains(text(),'Profilini doldurduktan sonra beğendiğin iş ilanlarına')]

check the job search page
    wait until location contains  ilanlari

click the date filter
    mouse over  css=[data-test="publish-date-filter-button"]
    click element  css=[data-test="publish-date-filter2"]

click the working type filter
    mouse over  css=[data-test="work-type-filter-button"]
    click element  css=[data-test="work-type-filter1"]

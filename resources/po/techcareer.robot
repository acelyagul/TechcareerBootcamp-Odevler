*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary

*** Keywords ***
Open Browser To Index Page
    Open Browser    about:blank    chrome
    Maximize Browser Window


go to teachcareer page
  go to  https://www.techcareer.net/


check the keşfet
  wait until page contains  Learn, Develop, Prove Yourself and Win!

click the keşfet
  click element  css= a:nth-of-type(4) > .label


check the bootcamp
  wait until page contains element  css=div:nth-of-type(23) > .lp-element.lp-pom-button > .label

click the boootcamp
  click element  css= div:nth-of-type(23) > .lp-element.lp-pom-button > .label


check the hackathon
  wait until page contains element  css=.shade1px strong

click the hackathon
  click element  css=.shade1px strong

check the hiring challenge
  wait until page contains element  css=a:nth-of-type(6) > .label

click the hiring challence
  click element  css=a:nth-of-type(6) > .label
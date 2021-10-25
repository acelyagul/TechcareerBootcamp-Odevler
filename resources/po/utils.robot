*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Library     DebugLibrary
Library     FakerLibrary

*** Variables ***
${TIMEOUT}  10

*** Keywords ***
click
    [Arguments]  ${SELECTOR}
    wait until page contains element  ${SELECTOR}  ${TIMEOUT}
    click element   ${SELECTOR}


scroll
    [Arguments]  ${SELECTOR}
    execute javascript  window.scrollTo(0,${HEIGHT})


input
    [Arguments]  ${LOCATOR}  ${TEXT}
    clear element text  ${LOCATOR}
    click element  ${LOCATOR}
    input text  ${LOCATOR}  ${TEXT}

debugger
    debug

get text input
    [Arguments]  ${LOCATOR}
    wait until page contains element  ${LOCATOR }
    ${DATA} =  Get Text  ${LOCATOR}
    [Return]  ${DATA}







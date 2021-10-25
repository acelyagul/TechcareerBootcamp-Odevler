*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  Chrome
*** Keywords ***
create session
    set selenium speed  0.5 seconds
    open browser  about:blank  ${BROWSER}
    MAXIMIZE BROWSER WINDOW

close session
    close browser
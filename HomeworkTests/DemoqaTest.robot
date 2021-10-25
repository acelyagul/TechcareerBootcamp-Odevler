*** Settings ***
Resource    ../resources/demoqaApp.robot
Resource    ../resources/utilsApp.robot

Test Setup  utilsApp.create session
Test Teardown  utilsApp.close session

*** Test Cases ***
verify the login
    demoqaApp.demoqa login
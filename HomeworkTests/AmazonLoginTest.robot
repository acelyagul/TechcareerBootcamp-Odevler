*** Settings ***
Resource    ../resources/amazonLoginApp.robot
Resource    ../resources/amazonApp.robot
Resource    ../resources/utilsApp.robot

Test Setup  utilsApp.create session
Test Teardown  utilsApp.close session

*** Test Cases ***
verify the login
    amazonLoginApp.unsuccessful login
    amazonLoginApp.success login

login by check the laptop search
    amazonLoginApp.success login
    amazonApp.check the laptop search
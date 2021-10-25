*** Settings ***
Resource    ../resources/amazonLoginApp.robot
Resource    ../resources/amazonAdressApp.robot
Resource    ../resources/utilsApp.robot

Test Setup  utilsApp.create session
Test Teardown  utilsApp.close session

*** Test Cases ***
verify the add new adress
    amazonLoginApp.success login
    amazonAdressApp.check the adress page
    amazonAdressApp.check the add new adress
    amazonAdressApp.delete the one adress


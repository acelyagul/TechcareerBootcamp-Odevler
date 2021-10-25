*** Settings ***
Documentation    Amazon Adress
Resource  ./po/amazonLogin.robot
Resource  ./po/amazonAdress.robot

Test Setup  utilsApp.create session
Test Teardown  utilsApp.close session

*** Keywords ***
check the adress page
    amazonAdress.go to account page
    amazonAdress.click the adress
    amazonAdress.check the adress page

check the add new adress
    amazonAdress.click the add adress button
    Sleep  5s
    amazonAdress.check the add adress page
    amazonAdress.enter the name
    amazonAdress.enter the city
    amazonAdress.enter the region
    amazonAdress.enter the district
    amazonAdress.enter the adressline 1
    amazonAdress.enter the adressline 2
    amazonAdress.enter the phone number
    amazonAdress.click add button

delete the one adress
    amazon.go to adresses page
    amazonAdress.check the adresses
    amazonAdress.delete the adress
    amazonAdress.check the delete adress

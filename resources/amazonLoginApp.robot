*** Settings ***
Documentation    Amazon Login
Resource  ./po/amazon.robot
Resource  ./po/amazonLogin.robot


*** Keywords ***
success login
    amazonLogin.go to register page
    amazonLogin.click login button
    amazonLogin.enter the mail
    amazonLogin.click continue button
    amazonLogin.enter the password
    amazonLogin.click signin button


unsuccessful login
    amazonLogin.go to register page
    amazonLogin.click login button
    amazonLogin.enter the mail
    amazonLogin.click continue button
    amazonLogin.enter the false password
    amazonLogin.click signin button
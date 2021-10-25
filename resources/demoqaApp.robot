*** Settings ***
Documentation    Demoqa Login
Resource  ./po/demoqa.robot
Resource  ./po/utils.robot


*** Keywords ***
demoqa login
    demoqa.Go To demoqa
    demoqa.enter the firstname
    demoqa.enter the lastname
    demoqa.enter the mail
    demoqa.select the gender
    demoqa.enter the phone number
    demoqa.select the birthday
    demoqa.enter the subject
    demoqa.select the hobbies
    demoqa.scroll the page
    demoqa.scroll
    demoqa.current adress
    demoqa.state and city


*** Settings ***
Documentation    Techcareer
Resource  ./po/techcareer.robot



*** Keywords ***
techcareer homopage
    techcareer.Open Browser To Index Page
    techcareer.go to teachcareer page
    techcareer.check the keşfet
    techcareer.click the keşfet
    techcareer.check the bootcamp
    techcareer.click the boootcamp
    techcareer.check the hackathon
    techcareer.click the hackathon
    techcareer.check the hiring challenge
    techcareer.click the hiring challence



*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary
Library  FakerLibrary
Resource  ./utils.robot
*** Variables ***
${HEIGHT}   20

*** Keywords ***
Go To demoqa
    go to   https://demoqa.com/automation-practice-form
    page should contain image  css=[src="/images/Toolsqa.jpg"]

enter the firstname
    ${FirstName}=  FakerLibrary.First Name
    utils.input  css=input.mr-sm-2[placeholder="First Name"]  ${FirstName}


enter the lastname
    ${LastName}=  FakerLibrary.Last Name
    utils.input  css=input.mr-sm-2[placeholder="Last Name"]  ${LastName}

enter the mail
    ${email}=  FakerLibrary.email
    utils.input   css=input.form-control[placeholder="name@example.com"]   ${email}

select the gender
    utils.click  css=label[for="gender-radio-2"]

enter the phone number
    utils.input  css=input.form-control[id="userNumber"]  05457852124

select the birthday
    utils.click    id=dateOfBirthInput
    click element     css=.react-datepicker__year-select
    click element    css=option[value="1997"]
    click element     css=.react-datepicker__month-select
    click element    css=option[value="9"]
    click element      css=div[aria-label="Choose Monday, October 6th, 1997"]

enter the subject
    utils.input     css=input[id="subjectsInput"]   English
   # click element   css=.subjects-auto-complete__control
    Press Keys    id=subjectsInput	 RETURN    #enter


select the hobbies
    utils.click  css=label[for="hobbies-checkbox-3"]

scroll the page
    Scroll Element Into View   css=[src="https://ad.plus/adplus-advertising.svg"]
    click element   css=[src="https://ad.plus/adplus-advertising.svg"]


scroll
    utils.scroll  window.scrollTo(0,${HEIGHT})


current adress
    utils.input  css=textarea[placeholder="Current Address"]  Mersin


state and city
     click element  id=state
     input text  css=[id='react-select-3-input']  NCR
     Press Keys  xpath://*[@id="state"]/div/div[1]/div[1]   TAB
     #Press Keys  xpath://*[@id="state"]/div/div[1]/div[1][contains(text(),'NCR')]
     click element  id=city
     input text  css=[id="react-select-4-input"]  Delhi
     Press Keys  xpath://*[@id="city"]/div/div[1]/div[1]   TAB

enter the submit
    utils.click  css=[id="submit"]
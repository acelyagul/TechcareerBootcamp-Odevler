*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary
Library  FakerLibrary
Resource  ./utils.robot

*** Variables ***
${NAME}  id=address-ui-widgets-enterAddressFullName
${CITY}  id=address-ui-widgets-enterAddressCity
${REGION}  id=address-ui-widgets-enterAddressStateOrRegion
${DISTRICT}  id=address-ui-widgets-enterAddressDistrictOrCounty
${ADRESS_LINE_1}  id=address-ui-widgets-enterAddressLine1
${ADRESS_LINE_2}  id=address-ui-widgets-enterAddressLine2
${PHONE_NUMBER}  id=address-ui-widgets-enterAddressPhoneNumber
${ADD_ADRESS_BUTTON}  css=.a-button-input
${DELETE}  css=.a-spacing-micro:nth-of-type(1) .a-span-last .delete-link

*** Keywords ***

go to account page
    go to  https://www.amazon.com.tr/gp/css/homepage.html?ref_=nav_youraccount_btn

click the adress
    click element   css=[data-card-identifier="AddressesAnd1Click"]

check the adress page
    wait until page contains element  css=.first-desktop-address-tile
    wait until element is visible  id=ya-myab-plus-address-icon
    wait until page contains  Adreslerim

click the add adress button
    utils.click  id=ya-myab-plus-address-icon

check the add adress page
    wait until page contains  Yeni adres ekle
    location should contain  add
    wait until location contains  addresses

enter the name
    ${ad}=  FakerLibrary.First Name
    ${soyad}=  FakerLibrary.Last Name
    utils.input   ${NAME}  ${ad} ${soyad}

enter the city
    utils.input  ${CITY}  İstanbul
    click element  css=.autoCompleteResult.autoCompleteScroll > .autoOp

enter the region
    utils.input  ${REGION}  Ümraniye
    click element  css=.autoCompleteResult.autoCompleteScroll > .autoOp


enter the district
    utils.input  ${DISTRICT}  Saray Mh.
    click element  css=.autoCompleteResult.autoCompleteScroll > .autoOp

enter the adressline 1
    utils.input  ${ADRESS_LINE_1}  Site Yolu Sokak

enter the adressline 2
    utils.input  ${ADRESS_LINE_2}   No:5

enter the phone number

    utils.input  ${PHONE_NUMBER}  5392225107

click add button
    utils.click  ${ADD_ADRESS_BUTTON}

check the adresses
    wait until page contains element   ${DELETE}
    wait until page contains  Adres Ekleyin

delete the adress
    utils.click  ${DELETE}
    utils.click   id=deleteAddressModal-1-submit-btn       #evet e tıkla

check the delete adress
    ${NAME} =  utils.get text input   css=.a-spacing-micro:nth-of-type(1) .a-span-last    #silindikten sonra artık ikinci blokta bulunan isim
    should not be equal  ${NAME}   Jerry Colon           #yeni 2. yerini alan eski ikincideki isimle aynı olmamalı



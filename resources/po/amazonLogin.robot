*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Library  DebugLibrary
Library  FakerLibrary
Resource  ./utils.robot

*** Keywords ***
go to register page
    go to  https://www.amazon.com.tr/ap/register?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com.tr%2F%3F_encoding%3DUTF8%26ref_%3Dnav_newcust&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=trflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&

click login button
    utils.click  css=.a-link-emphasis

enter the mail
    utils.click  id=ap_email
    utils.input  id=ap_email  ${mail}

click continue button
    utils.click  id=continue


enter the password
    utils.click  id=ap_password
    utils.input  id=ap_password  ${password}

enter the false password
    utils.click  id=ap_password
    utils.input  id=ap_password  ${false_password}


click signin button
    utils.click  id=signInSubmit
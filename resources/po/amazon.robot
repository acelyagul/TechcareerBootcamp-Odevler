*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Library  Debuglibrary
Library  FakerLibrary

*** Variables ***
${KEYWORD}  id=searchDropdownBox
${HOMOPAGE}  https://www.amazon.com.tr/

*** Keywords ***
Open Browser To Index Page
    Open Browser    about:blank    chrome
    Maximize Browser Window
    Go To   https://www.amazon.com.tr/

Go To Homopage
    Go TO  ${HOMOPAGE}
    wait until element is visible   id=nav-logo-sprites

go to adresses page
    go to  https://www.amazon.com.tr/a/addresses?ref_=ya_d_c_addr

Click Dropbox
    Click Element   ${KEYWORD}

Navigate to Register
    Go to  https://www.amazon.com.tr/ap/register?showRememberMe=true&openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com.tr%2F%3Fref_%3Dnav_signin&prevRID=078WC10ENZXT523TSSX8&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=trflex&openid.mode=checkid_setup&prepopulatedLoginId=&failedSignInCount=0&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&pageId=trflex&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0

Check Dashboard Title
    Title Should Be  Amazon.com.tr: Elektronik, bilgisayar, akıllı telefon, kitap, oyuncak, yapı market, ev, mutfak, oyun konsolları ürünleri ve daha fazlası için internet alışveriş sitesi

Navigate to the Register Page
    Click Link  id=nav-link-accountList

Login Page Check Title
    Title Should Be  Amazon Sign-In

Click on the register button
    Click Link  id=createAccountSubmit

Check the register page
    Page Should Contain  Passwords must be at least 6 characters.

Check the register page tr
    Page Should Contain  Şifreler en az 6 karakterden oluşmalıdır.

Enter Your Name
    Input Text  id=ap_customer_name  Ayse

Enter Email adress
    Input Text  id=ap_email  acelyaagul+999@gmail.com

Enter Password
    Input Password  id=ap_password  Aa123456.!

Enter Re-enter password
    Input Password  id=ap_password_check    Aa123456.!

Click on the continue button
    Click Button  id=continue

Click on the Moda Button
    Click Element  css=[data-csa-c-content-id="nav_cs_fashion_6b3951b1929a4f938613c2bf9c38375f"]

Check the Moda
    Title Should Be   Amazon.com.tr: Moda

Click on the Kadin Button
#kodda saga tıkla copy xpath
    Click Link  xpath://*[@id="nav-subnav"]/a[3]

Check the Kadin Page
    Title Should Be     Amazon.com.tr: Kadın: Moda: Kıyafet, Ayakkabı, Aksesuarlar, El ve Omuz Çantası ve Fazlası

Scroll to the Features
    Scroll Element Into View    xpath://img[@alt="jean"]

Click on the Jean Button
    Click Element  css=[cel_widget_id="acsux-widgets_content-grid_merchandised-search-18_row2-col1"]

Check Jean Page
    Wait Until Page Contains  Pantolon ve Şort Modeli

Click on the Accept button
    Click Button  id=sp-cc-accept

Select Size
    Click Button  css=[aria-label="29"]

Click the Jean
    Click Element   //*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div[3]/div[2]/h2/a

Check the this Jean Page
    Wait Until Page Contains   Levi's Kadın 721 High Rise Skinny
 #[aria-labelledby="a-autoid-7-announce"]


Click the number
    Click Element   css=[name="dropdown_selected_size_name"]

Select number
    Click Element   css=[data-a-id="size_name_9"]

Click Shop
    Wait Until Element is Visible  id=add-to-cart-button
    Click Element  id=add-to-cart-button

Check the card
    Wait Until Page Contains Element  id=huc-v2-order-row-confirm-text
    Wait Until Page Contains  Sepete Eklendi

Click the alışveişi tamamla
    Click Element   id=hlb-ptc-btn-native

Check the Login Page
    page should contain element  id=authportal-center-section

Fill the name input
    wait until element is visible   id=ap_customer_name
    ${ad}=  FakerLibrary.First Name
    ${soyad}=  FakerLibrary.Last Name
    click element   id=ap_customer_name
    input text  id=ap_customer_name   ${ad} ${soyad}

Fill the email input
    wait until element is visible   id=ap_email
    ${email}=  FakerLibrary.email
    click element   id=ap_email
    Input text  id=ap_email   ${email}

Fill the password input
    wait until element is visible   id=ap_password
    ${password}=  FakerLibrary.Password
    click element   id=ap_email
    Input text  id=ap_password   ${password}
    Input Text  id=ap_password_check  ${password}

Click ok button
    wait until page contains element    id=continue
    click element   id=continue

Check the register
    wait until page contains  Hesabınızı korumak için bu bulmacayı çözün

enter search textbox
    click element   id=twotabsearchtextbox
    input text  id=twotabsearchtextbox  ${SEARCH_KEYWORD}

click search button
    click element  id=nav-search-submit-button

check the search result
    wait until page contains  Aranan ürün:
    wait until page contains  "laptop"
    wait until location contains  laptop  #url de yer alan


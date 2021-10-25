*** Settings ***
Documentation  Suite description
Resource  ./po/amazon.robot

*** Keywords ***
Amazon KadinModa Test Case
    amazon.Open Browser To Index Page
    amazon.Check Dashboard Title
    amazon.Click on the Moda Button
    amazon.Check the Moda
    amazon.Click on the Kadin Button
    amazon.Check the Kadin Page
    amazon.Click on the Accept button
    amazon.Scroll to the Features
    amazon.Click on the Jean Button
    amazon.Check Jean Page
    amazon.Select Size
    amazon.Click the Jean
    amazon.Check the this Jean Page
    amazon.Click the number
    amazon.Select number
    Sleep   5s
    amazon.Click Shop
    Sleep   5s
    amazon.Check the card
    amazon.Click the alışveişi tamamla
    amazon.Check the Login Page

Amazon Register Test Case
    Open Browser To Index Page
    Check Dashboard Title
    Navigate to the Login Page
    Login Page Check Title
    click on the register button
    check the register page
    enter your name
    enter email adress
    enter password
    enter re-enter password
    click on the continue button
    sleep   3s

Amazon Register Test Case with FakerLibrary
    amazon.Open Browser To Index Page
    amazon.Navigate to Register
    amazon.Check the register page tr
    amazon.Fill the name input
    amazon.Fill the email input
    amazon.Fill the password input
    amazon.Click ok button
    Sleep  5s
    amazon.Check the register


Check the laptop search
    amazon.Go To Homopage
    amazon.enter search textbox
    amazon.click search button
    amazon.check the search result



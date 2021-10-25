*** Settings ***
Resource    ../resources/amazonApp.robot

*** Test Cases ***
verify the shopping
    amazonApp.Amazon KadinModa Test Case

verify the register
    amazonApp.Amazon Register Test Case

verify the register with FakerLibrary
    amazonApp.Amazon Register Test Case with FakerLibrary


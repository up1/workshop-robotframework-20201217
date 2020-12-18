*** Setting ***
Library    FakerLibrary

*** Test Cases ***
Try to generate data
    ${data}=  Credit Card Full
    Log to console   ${data}
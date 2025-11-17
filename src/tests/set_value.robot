*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Set counter value
    Go To  ${HOME_URL}
    Input Text  value  0
    Click Button  aseta
    Page Should Contain  nappia painettu 0 kertaa
    Input Text  value  5
    Click Button  aseta
    Page Should Contain  nappia painettu 5 kertaa
    Input Text  value  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa
   

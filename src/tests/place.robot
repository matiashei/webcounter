*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup     Reset Counter

*** Test Cases ***
When a value is set for the counter, the counter value becomes the set value
    Go To  ${HOME_URL}
    Input Text  new_value  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa

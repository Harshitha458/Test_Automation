*** Settings ***
Library           SeleniumLibrary
Library           ExcelLibrary
Variables         VarFile.py
Library           Process
Library           OperatingSystem

*** Variables ***
${username}       hharshitha458@gmail.com
${password}       harshi4457
${excelfile}      C:\\Users\\balakh\\ScriptETE\\datefile28.xls

*** Test Cases ***
Testcase1
    [Documentation]    login to the application by using username and password.
    ...    Editing personal account
    ...    adding new adresss to your profile
    login to the application
    Edit_Account
    MY_address
    [Teardown]    test_teardown

testcase2
    [Setup]    test_teardown
    perform_action
    perform_action2
    [Teardown]

testcase3
    login to the application
    end to end
    [Teardown]    test_teardown

*** Keywords ***
login to the application
    Open Browser    https://bookswagon.com    gc
    Maximize Browser Window
    Wait Until Element Is Visible    &{OR}[Login]
    click element    &{OR}[Login]
    Wait Until Element Is Visible    &{OR}[username]
    Input Text    &{OR}[username]    ${username}
    Wait Until Element Is Visible    &{OR}[password]
    Input Text    &{OR}[password]    ${password}
    sleep    2s
    Click Element    &{OR}[signin_button]

Edit_Account
    sleep    5s
    Click Element    &{OR}[Personal_setting]
    Wait Until Element Is Visible    &{OR}[Account_setting]
    Click Element    &{OR}[Account_setting]
    Wait Until Element Is Visible    &{OR}[First_name]
    Open Excel    ${excelfile}
    ${name}    Read Cell Data By Name    Sheet1    B1
    Input Text    &{OR}[First_name]    ${name}
    Wait Until Element Is Visible    &{OR}[Last_name]
    ${lname}    Read Cell Data By Name    Sheet1    B2
    Input Text    &{OR}[Last_name]    ${lname}
    sleep    2s
    Click Element    &{OR}[Edit]
    sleep    2s
    Click Element    &{OR}[myadrss]

MY_address
    Wait Until Element Is Visible    &{OR}[add_adress]
    Click Element    &{OR}[add_adress]
    Wait Until Element Is Visible    &{OR}[recipent_name]
    Open Excel    ${excelfile}
    ${name}    Read Cell Data By Name    Sheet1    B1
    input text    &{OR}[recipent_name]    ${name}
    Wait Until Element Is Visible    &{OR}[cmpny_name]
    ${cname}    Read Cell Data By Name    Sheet1    B3
    Input Text    &{OR}[cmpny_name]    ${cname}
    Wait Until Element Is Visible    &{OR}[s_adress]
    ${s}    Read Cell Data By Name    Sheet1    B4
    Input Text    &{OR}[s_adress]    ${s}
    sleep    10s
    Click Element    &{OR}[state]
    Sleep    2s
    Click Element    &{OR}[s_state]
    Wait Until Element Is Visible    &{OR}[city]
    ${city}    Read Cell Data By Name    Sheet1    B5
    Input Text    &{OR}[city]    ${city}
    Wait Until Element Is Visible    &{OR}[pincode]
    ${pincode}    Read Cell Data By Name    Sheet1    B6
    Input Text    &{OR}[pincode]    ${pincode}
    Wait Until Element Is Visible    &{OR}[phone]
    ${phone}    Read Cell Data By Name    Sheet1    B7
    Input Text    &{OR}[phone]    ${phone}
    Wait Until Element Is Visible    &{OR}[submit]
    Click Element    &{OR}[submit]

perform_action
    login to the application
    click element    &{OR}[home_img]
    sleep    6s
    click element    &{OR}[child]
    click element    &{OR}[Range]
    sleep    2s
    click element    &{OR}[relvance]
    Select From List By Value    &{OR}[relvance]    Product_TitleSort desc
    sleep    2s
    click element    &{OR}[search_result]
    Capture Page Screenshot
    Input Text    &{OR}[search]    object oriented programming
    Sleep    2s
    Press Key    &{OR}[search]    \\13
    Wait Until Element Is Visible    &{OR}[wishlist]
    Click Element    &{OR}[wishlist]
    Capture Page Screenshot

test_teardown
    Close Browser

perform_action2
    login to the application
    Wait Until Element Is Visible    &{OR}[f_authors]
    Click Element    &{OR}[f_authors]
    Wait Until Element Is Visible    &{OR}[stphen]
    Click Element    &{OR}[stphen]
    Wait Until Element Is Visible    &{OR}[add_wishlist]
    Click Element    &{OR}[add_wishlist]

end to end
    Wait Until Element Is Visible    &{OR}[Books]
    Mouse Over    &{OR}[Books]
    Wait Until Element Is Visible    &{OR}[show_all]
    Click Element    &{OR}[show_all]
    Wait Until Element Is Visible    &{OR}[true_stories]
    Click Element    &{OR}[true_stories]
    Wait Until Element Is Visible    &{OR}[grid_view]
    Click Element    &{OR}[grid_view]
    Wait Until Element Is Visible    &{OR}[mouseover]
    Mouse Over    &{OR}[mouseover]
    Wait Until Element Is Visible    &{OR}[addwishlist]
    Click Element    &{OR}[addwishlist]
    Wait Until Element Is Visible    &{OR}[remove]
    Click Element    &{OR}[remove]

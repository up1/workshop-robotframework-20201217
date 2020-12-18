*** Settings ***
Library            SeleniumLibrary
Suite Setup        เข้าไปยัง google เพื่อค้นหาข้อมูล
Suite Teardown     Close Browser
Test Teardown      กลับไปยังหน้าค้นหา
Test Template      Flow ของการค้นหาข้อมูลสำเร็จ

*** Variables ***
${URL}         https://www.google.com/
${BROWSER}     gc

*** Test Cases ***
#---------------------------
#  Test name   |     Keyword |
TC001               เยียวยา
TC002               ไม่ได้รับ OTP
TC001               คนละครึ่ง

*** Keywords ***
# Test Template
Flow ของการค้นหาข้อมูลสำเร็จ
    [Arguments]   ${keyword}
    ค้นหาข้อมูล   ${keyword}

ค้นหาข้อมูล
    [Arguments]  ${keyword}
    Input Text     name:q   ${keyword}
    Press Keys     name:q   RETURN
    Press Keys     name:q   RETURN
พบข้อมูลคนละครึ่งในอันดับแรก
    Wait Until Element Contains   xpath://*[@id="rso"]/div[1]/div/div/div/div[1]/a/h3/span
    ...   คนละครึ่ง

เข้าไปยัง google เพื่อค้นหาข้อมูล
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window

กลับไปยังหน้าค้นหา
    Go To    ${URL}
*** Settings ***
Library            SeleniumLibrary
Test Teardown      Close Browser

*** Variables ***
${URL}         https://www.google.com/
${BROWSER}     gc

*** Test Cases ***
ค้นหาข้อมูลด้วย keyword ไม่ได้รับ OTP สำเร็จ
    เข้าไปยัง google เพื่อค้นหาข้อมูล
    ค้นหาข้อมูล   ไม่ได้รับ OTP

ค้นหาข้อมูลด้วย keyword คนละครึ่ง สำเร็จ
    เข้าไปยัง google เพื่อค้นหาข้อมูล
    ค้นหาข้อมูล   คนละครึ่ง
    พบข้อมูลคนละครึ่งในอันดับแรก

*** Keywords ***
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
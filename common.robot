*** Settings ***
Library            SeleniumLibrary

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

กลับไปยังหน้าค้นหา
    Go To    ${URL}
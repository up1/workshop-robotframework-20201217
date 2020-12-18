*** Settings ***
Resource           common.robot
Suite Setup        เข้าไปยัง google เพื่อค้นหาข้อมูล
Suite Teardown     Close Browser

*** Variables ***
${URL}         https://www.google.com/
${BROWSER}     gc

*** Test Cases ***
ค้นหาข้อมูลสำเร็จ
    [Template]  Flow ของการค้นหาข้อมูลสำเร็จ
    เยียวยา
    ไม่ได้รับ OTP
    คนละครึ่ง

*** Keywords ***
# Test Template
Flow ของการค้นหาข้อมูลสำเร็จ
    [Arguments]   ${keyword}
    ค้นหาข้อมูล   ${keyword}
    กลับไปยังหน้าค้นหา
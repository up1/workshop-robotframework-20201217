*** Settings ***
Resource           common.robot
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
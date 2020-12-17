*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
ค้นหาข้อมูลด้วย keyword คนละครึ่ง สำเร็จ
    เข้าไปยัง google เพื่อค้นหาข้อมูล
    ค้นหาคำว่าคนละครึ่ง
    พบข้อมูลคนละครึ่งในอันดับแรก

*** Keywords ***
เข้าไปยัง google เพื่อค้นหาข้อมูล
    Open Browser    url=https://www.google.com/    browser=gc
    Maximize Browser Window
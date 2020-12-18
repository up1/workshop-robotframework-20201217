*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ทำการ upload 3 files สำเร็จ
    เลือกไฟล์จำนวน 3 ไฟล์เข้าคิว
    # ตรวจสอบผลการทำงาน
    upload ไฟล์ที่ 1 สำเร็จ
    upload ไฟล์ที่ 2 สำเร็จ
    upload ไฟล์ที่ 3 สำเร็จ

*** Keywords ***
upload ไฟล์ที่ 1 สำเร็จ
    Click Element   xpath://table/tbody/tr[1]/td[5]/button[1]
    Wait Until Element Is Visible   xpath://div[@style="width: 33%;"]

upload ไฟล์ที่ 2 สำเร็จ
    Click Element   xpath://table/tbody/tr[2]/td[5]/button[1]
    Wait Until Element Is Visible   xpath://div[@style="width: 67%;"]

upload ไฟล์ที่ 3 สำเร็จ
    Click Element   xpath://table/tbody/tr[3]/td[5]/button[1]
    Wait Until Element Is Visible   xpath://div[@style="width: 100%;"]


เลือกไฟล์จำนวน 3 ไฟล์เข้าคิว
    Open Browser    url=http://nervgh.github.io/pages/angular-file-upload/examples/simple/    
    ...   browser=gc
    Maximize Browser Window
    Choose File   xpath://*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]
    ...   ${CURDIR}/data/file-01.png
    Choose File   xpath://*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]
    ...   ${CURDIR}/data/file-02.png
    Choose File   xpath://*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]
    ...   ${CURDIR}/data/file-03.png
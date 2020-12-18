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
    Upload file and check   1  33%

upload ไฟล์ที่ 2 สำเร็จ
    Upload file and check   2  67%

upload ไฟล์ที่ 3 สำเร็จ
    Upload file and check   3  100%

Upload file and check
    [Arguments]   ${row_no}   ${progress_percent}
    Click Element   xpath://table/tbody/tr[${row_no}]/td[5]/button[1]
    Wait Until Element Is Visible   xpath://div[@style="width: ${progress_percent};"]


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
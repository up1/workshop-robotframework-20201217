*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Quiz
    Open Browser   https://rdserver.rd.go.th/publish/index.php   gc
    Maximize Browser Window
    Click Link   ยื่นแบบออนไลน์
    Select Frame   xpath://*[@id="lightboxdialog"]/p/iframe
    Click Link   คลิก
    Unselect Frame
    Click Element   xpath://*[@id="lightboxdialog"]/button
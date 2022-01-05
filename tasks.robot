*** Settings ***
Documentation     Send Whatsapp Message
Resource  WhatsappOwnCode.robot

*** Variables***
${whatsapp_no}=  919130313301
${message}=  "Hello RPA Developers! Hope you doing good"

*** Tasks ***
Main Task
    Send Message AttachBrowser  ${whatsapp_no}  ${message}



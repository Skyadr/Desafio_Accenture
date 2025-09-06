*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Abrir o site DemoQA

    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    #Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-gpu

    Create WebDriver    Chrome    options=${options}
    Go To    https://demoqa.com
    Maximize Browser Window
    Title Should Be    DEMOQA
    Set Selenium Implicit Wait    10s

Remover banners
    Execute Javascript    var b=document.getElementById('fixedban'); if(b){ b.remove(); }
    Execute Javascript    var f=document.getElementsByTagName('footer')[0]; if(f){ f.style.display='none'; }
    Execute Javascript    var ads=document.querySelectorAll("iframe[id^='google_ads_iframe']"); ads.forEach(a=>a.remove());
    #Execute Javascript    window.scrollTo(0, document.body.scrollHeight)


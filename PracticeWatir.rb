require 'selenium-webdriver'
require 'watir'

    Selenium::WebDriver::Chrome.driver_path="C://RoshTesting//Tools//Eclipse//RubyBDD//Browser//chromedriver.exe"
    #creating browser object
    driver = Watir::Browser.new :chrome


    driver.goto("https://www.facebook.com/")
    driver.text_field(id: "email").send_keys("0sdf2f")
    driver.text_field(id:"pass").send_keys("asd")
    driver.input(value:'Log In').click

    actErrMsg = driver.text.include?"The email or phone number you’ve entered doesn’t match any account."

    puts actErrMsg



    if actErrMsg==true
        puts "Test Case Pass"
    else
        puts "Test Case fail"
    end

    driver.close







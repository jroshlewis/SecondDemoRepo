require 'selenium-webdriver'

class PracticeRuby
      
      Selenium::WebDriver::Chrome.driver_path="C://RoshTesting//Tools//Browsers//chromedriver.exe"
      driver = Selenium::WebDriver.for :chrome
      
      driver.get("https://www.facebook.com/") 
  
end
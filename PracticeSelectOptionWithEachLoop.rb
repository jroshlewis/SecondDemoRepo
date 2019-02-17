require 'selenium-webdriver'

class PracticeRuby2
  
  Selenium::WebDriver::Chrome.driver_path="C://RoshTesting//Tools//Eclipse//PracticeRuby//Browser//chromedriver.exe"
  driver = Selenium::WebDriver.for :chrome
  
  driver.get("https://www.facebook.com/")
  
 month = Selenium::WebDriver::Support::Select.new(driver.find_element(:id,'month'))
   
 month.select_by(:index,4)
 
 # to get all the text from select list
 driver.find_element(:id,'month').click
 
  mnthList = driver.find_elements(:css,'#month')
 
  #each loop to fetch the values from month select list
  mnthList.each do |option|
  puts option.text
  end
  
  day = Selenium::WebDriver::Support::Select.new(driver.find_element(:id,'day'))
   day.select_by(:text,"21")
  puts "*****************************************************"
    
  #to fetch the values of day select list
    #locating the element
   driver.find_element(:id,'day').click
   
   #assigning all the elements of day select list
 dayList = driver.find_elements(:css,'#day')
 
 #each loop for fetching the values of day select list
  dayList.each do |i|    # can use any name either 'i' or give the list name like 'option'
    puts i.text
  end
  
end
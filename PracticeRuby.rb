require 'selenium-webdriver'

class PracticeRuby
      
   def add
     a=10
     b=20
     c = a+b
     puts c
   end
      
      
    obj = PracticeRuby.new()
    
    obj.add()
    
    
    arr = [12,23,345,4565,546,456]
    
    puts arr.size()
    
    arr[6]=10
    
    puts arr.size()
    
    puts arr[1,3]
    
    puts "**********************************************"
    (1..100).each do |i|
      puts i
    end
    
  
      
      
  
end
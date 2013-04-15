require "selenium-webdriver"
require 'rubygems'

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://localhost:3000/"

puts driver.title
driver.find_element(:link,"Sign in").click
puts 'goot sign_n click'
driver.find_element(:id,"user_email").send_keys("ele@yandex.ru")
driver.find_element(:id,"user_password").send_keys("12345678")
driver.find_element(:name,"commit").click
driver.find_element(:link,"YourBits").click
if driver.execute_script("return window.document.defaultView.getComputedStyle(window.document.getElementById('See_balance')).getPropertyValue('background-color')") == 'rgb(218, 79, 73)'
  puts "button is red See_balance"
else
  puts "button See_balance is not red"
end  
if driver.execute_script("return window.document.defaultView.getComputedStyle(window.document.getElementById('pay_bits')).getPropertyValue('background-color')") == 'rgb(218, 79, 73)'
  puts "button pay_bits is red"
else
  puts "button pay_bits is not red"
end
driver.find_element(:id,"See_balance").click
if driver.execute_script("return window.document.defaultView.getComputedStyle(window.document.getElementById('edit_balance')).getPropertyValue('background-color')") == 'rgb(218, 79, 73)'
  puts "button edit is red"
else
  puts "button edit is not red"
end  
driver.quit

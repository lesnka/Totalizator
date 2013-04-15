require "selenium-webdriver"
require 'rubygems'
driver = Selenium::WebDriver.for :firefox
#################################################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts "1"
driver.find_element(:id,"demo_account_demo_account_contact_attributes_first_name").send_keys("Testdemousername")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_email").send_keys("test_mt4_@aforex.ru")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_undivided_phone").send_keys('74951234567')
driver.find_element(:id,"demo_account_submit").click
driver.title 
begin 
  driver.find_element(:id,"common_account_registration_form")
  #puts 'form render'
rescue
  puts 'form not render'
end
########################################################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/about_company"
puts "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/about_company"
puts "2"
driver.find_element(:id,"demo_account_demo_account_contact_attributes_first_name").send_keys("Testdemousername")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_email").send_keys("test_mt4_@aforex.ru")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_undivided_phone").send_keys('74951234567')
driver.find_element(:id,"demo_account_submit").click
driver.title 
begin 
  driver.find_element(:id,"common_account_registration_form")
  #puts 'form render'
rescue
  puts 'form not render'
end
###########################################################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts "3"
driver.find_element(:xpath,"/html/body/footer/div/nav/ul/li[1]/ul/li[2]/a").click
begin 
  driver.find_element(:id,"common_account_registration_form")
  #puts 'form render'
rescue
  puts 'form not render'
end
#############################################################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts "4"
driver.find_element(:xpath,"/html/body/footer/div/nav/ul/li[2]/ul/li[3]/a").click
begin 
  driver.find_element(:id,"common_account_registration_form")
  #puts 'form render'
rescue
  puts 'form not render'
end
##############################################################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/about"
puts "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/about"
puts "5"
driver.find_element(:id,"demo_account_demo_account_contact_attributes_first_name").send_keys("Testdemousername")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_email").send_keys("test_mt4_@aforex.ru")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_undivided_phone").send_keys('74951234567')
driver.find_element(:id,"demo_account_submit").click
driver.title 
begin 
  driver.find_element(:id,"common_account_registration_form")
  #puts 'form render'
rescue
  puts 'form not render'
end


driver.quit


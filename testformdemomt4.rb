require "selenium-webdriver"
require 'rubygems'
driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/opening-account"

driver.find_element(:id,"demo_account_demo_account_contact_attributes_first_name").send_keys("Testdemousername")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_email").send_keys("test_mt4_@aforex.ru")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_undivided_phone").send_keys('74951234567')
driver.find_element(:id,"demo_account_submit").click
driver.title 
begin 
  driver.find_element(:id,"common_account_registration_form")
  puts 'Error_cam_later'
rescue
  puts 'form MT4 tested'
end
driver.quit


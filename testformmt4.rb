require "selenium-webdriver"
require 'rubygems'
driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/forex-real-account"

driver.find_element(:id,"user_user_info_attributes_last_name").send_keys("Testuserlastname")
driver.find_element(:id,"user_user_info_attributes_first_name").send_keys("Testuserfirstname")
t=Time.new.to_i
driver.find_element(:id,"user_email").send_keys("test_mt4_" + t.to_s + "@aforex.ru")
driver.find_element(:id,"user_password").send_keys("123456789")
driver.find_element(:id,"user_password_confirmation").send_keys("123456789")
driver.find_element(:id,"user_contact_info_attributes_country_code").send_keys('7')
driver.find_element(:id,"user_contact_info_attributes_area_code").send_keys('910')
driver.find_element(:id,"user_contact_info_attributes_phone").send_keys('1234567')

driver.find_element(:id,"user_agreed").click
driver.find_element(:id,"user_submit").click
driver.title 
begin 
  driver.find_element(:xpath,"/html/body/div[4]/div[1]/div[1]/p[2]/b")
  puts 'form MT4 tested'
rescue
  puts 'Error_cam_later'
end
driver.quit

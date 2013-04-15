require "selenium-webdriver"
require 'rubygems'
driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"

driver.find_element(:xpath,"/html/body/div[3]/div[1]/div[1]/a[1]").click
puts 'open torg schet'
begin 
  driver.find_element(:xpath,'//*[@id="common_account_registration_form"]')
  puts 'form render'
rescue
  puts 'form not render'
end
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
driver.find_element(:xpath,"/html/body/div[3]/div[1]/div[2]/ul[1]/li[4]/div/a").click
puts 'open torg schet big button'
begin 
  driver.find_element(:xpath,'//*[@id="common_account_registration_form"]')
  puts 'form render'
rescue
  puts 'form not render'
end
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts 'open demo chet'
driver.find_element(:id,"demo_account_submit").click
begin 
  driver.find_element(:id,"common_account_registration_form")
  puts 'form render'
rescue
  puts 'Error_cam_later'
end

driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts 'open demo chet'
puts driver.find_element(:xpath,"/html/body/div[3]/div[1]/div[1]/a[3]").location
driver.find_element(:xpath,"/html/body/div[3]/div[1]/div[1]/a[3]").click

begin 
  driver.find_element(:id,"common_account_registration_form")
  puts 'form render'
rescue
  puts 'Error_cam_later'
end

driver.quit
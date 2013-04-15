require "selenium-webdriver"
require 'rubygems'
driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"

driver.find_element(:xpath,'/html/body/footer/div/nav/ul/li[1]/ul/li[1]/a')
begin 
  driver.find_element(:xpath,'//*[@id="common_account_registration_form"]')
  puts 'form render'
rescue
  puts 'form not render'
end
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
driver.find_element(:xpath,'/html/body/footer/div/nav/ul/li[2]/ul/li[2]/a')
begin 
  driver.find_element(:xpath,'//*[@id="common_account_registration_form"]')
  puts 'form render'
rescue
  puts 'form not render'
end
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
driver.find_element(:xpath,'/html/body/div[2]/nav/ul/li[1]/div/div[2]/ul/li[1]/a')
begin 
  driver.find_element(:xpath,'//*[@id="common_account_registration_form"]')
  puts 'form render'
rescue
  puts 'form not render'
end
driver.quit
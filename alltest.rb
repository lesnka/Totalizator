require "selenium-webdriver"
require 'rubygems'
driver = Selenium::WebDriver.for :firefox
puts "test open button"
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts 'http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/'
puts driver.find_element(:xpath,'/html/body/footer/div/nav/ul/li[1]/ul/li[1]/a').location
#puts "||||||||||||||||||||||||||||"
driver.find_element(:xpath,'/html/body/footer/div/nav/ul/li[1]/ul/li[1]/a')
begin 
  driver.find_element(:xpath,'//*[@id="common_account_registration_form"]')
  #puts 'form render'
rescue
  puts "||||||||||||||||||||||||||||"
  puts 'form not render'
  puts "||||||||||||||||||||||||||||"
end
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts 'http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/'
puts driver.find_element(:xpath,'/html/body/footer/div/nav/ul/li[2]/ul/li[2]/a').location
#puts "||||||||||||||||||||||||||||"

driver.find_element(:xpath,'/html/body/footer/div/nav/ul/li[2]/ul/li[2]/a')
begin 
  driver.find_element(:xpath,'//*[@id="common_account_registration_form"]')
  #puts 'form render'
rescue
  puts "||||||||||||||||||||||||||||"
  puts 'form not render'
  puts "||||||||||||||||||||||||||||"
end
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts 'http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/'
puts driver.find_element(:xpath,'/html/body/div[2]/nav/ul/li[1]/div/div[2]/ul/li[1]/a').location
#puts "||||||||||||||||||||||||||||"
driver.find_element(:xpath,'/html/body/div[2]/nav/ul/li[1]/div/div[2]/ul/li[1]/a')
begin 
  driver.find_element(:xpath,'//*[@id="common_account_registration_form"]')
  #puts 'form render'
rescue
  puts "||||||||||||||||||||||||||||"
  puts 'form not render'
  puts "||||||||||||||||||||||||||||"
end
###########################################
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts 'http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/'
puts driver.find_element(:xpath,"/html/body/div[3]/div[1]/div[1]/a[1]").location
#puts "||||||||||||||||||||||||||||"
driver.find_element(:xpath,"/html/body/div[3]/div[1]/div[1]/a[1]").click
puts 'open torg schet'
begin 
  driver.find_element(:xpath,'//*[@id="common_account_registration_form"]')
  #puts 'form render'
rescue
  puts "||||||||||||||||||||||||||||"
  puts 'form not render'
  puts "||||||||||||||||||||||||||||"
end
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts 'http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/'
puts driver.find_element(:xpath,"/html/body/div[3]/div[1]/div[2]/ul[1]/li[4]/div/a").location
#puts "||||||||||||||||||||||||||||"
driver.find_element(:xpath,"/html/body/div[3]/div[1]/div[2]/ul[1]/li[4]/div/a").click
puts 'open torg schet big button'
begin 
  driver.find_element(:xpath,'//*[@id="common_account_registration_form"]')
  #puts 'form render'
rescue
   puts "||||||||||||||||||||||||||||"
  puts 'form not render'
  puts "||||||||||||||||||||||||||||"
end
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts 'http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/'
puts driver.find_element(:id,"demo_account_submit").location
#puts "||||||||||||||||||||||||||||"
driver.find_element(:id,"demo_account_submit").click
begin 
  driver.find_element(:id,"common_account_registration_form")
  #puts 'form render'
rescue
   puts "||||||||||||||||||||||||||||"
  puts 'Error'
  puts "||||||||||||||||||||||||||||"
end
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts 'http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/'
puts driver.find_element(:xpath,"/html/body/div[3]/div[1]/div[1]/a[3]").location
#puts "||||||||||||||||||||||||||||"
driver.find_element(:xpath,"/html/body/div[3]/div[1]/div[1]/a[3]").click
begin 
  driver.find_element(:id,"common_account_registration_form")
  #puts 'form render'
rescue
   puts "||||||||||||||||||||||||||||"
  puts 'Error'
  puts "||||||||||||||||||||||||||||"
end
###########################################
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
#puts "||||||||||||||||||||||||||||"
puts driver.find_element(:id,"demo_account_submit").location
driver.find_element(:id,"demo_account_demo_account_contact_attributes_first_name").send_keys("Testdemousername")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_email").send_keys("test_mt4_@aforex.ru")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_undivided_phone").send_keys('74951234567')
driver.find_element(:id,"demo_account_submit").click
driver.title 
begin 
  driver.find_element(:id,"common_account_registration_form")
  #puts 'form render'
rescue
  puts "||||||||||||||||||||||||||||"
  puts 'form not render'
  puts "||||||||||||||||||||||||||||"
end
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/about_company"
puts "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/about_company"
#puts "||||||||||||||||||||||||||||"
puts driver.find_element(:id,"demo_account_submit").location
driver.find_element(:id,"demo_account_demo_account_contact_attributes_first_name").send_keys("Testdemousername")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_email").send_keys("test_mt4_@aforex.ru")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_undivided_phone").send_keys('74951234567')
driver.find_element(:id,"demo_account_submit").click
driver.title 
begin 
  driver.find_element(:id,"common_account_registration_form")
  #puts 'form render'
rescue
  puts "||||||||||||||||||||||||||||"
  puts 'form not render'
  puts "||||||||||||||||||||||||||||"
end
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
#puts "||||||||||||||||||||||||||||"
puts driver.find_element(:xpath,"/html/body/footer/div/nav/ul/li[1]/ul/li[2]/a").location
driver.find_element(:xpath,"/html/body/footer/div/nav/ul/li[1]/ul/li[2]/a").click
begin 
  driver.find_element(:id,"common_account_registration_form")
  #puts 'form render'
rescue
  puts "||||||||||||||||||||||||||||"
  puts 'form not render'
  puts "||||||||||||||||||||||||||||"
end
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
puts "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/"
#puts "||||||||||||||||||||||||||||"
puts driver.find_element(:xpath,"/html/body/footer/div/nav/ul/li[2]/ul/li[3]/a").location
driver.find_element(:xpath,"/html/body/footer/div/nav/ul/li[2]/ul/li[3]/a").click
begin 
  driver.find_element(:id,"common_account_registration_form")
  #puts 'form render'
rescue
  puts "||||||||||||||||||||||||||||"
  puts 'form not render'
  puts "||||||||||||||||||||||||||||"
end
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/about"
puts "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/about"
#puts "||||||||||||||||||||||||||||"
puts driver.find_element(:id,"demo_account_submit").location
driver.find_element(:id,"demo_account_demo_account_contact_attributes_first_name").send_keys("Testdemousername")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_email").send_keys("test_mt4_@aforex.ru")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_undivided_phone").send_keys('74951234567')
driver.find_element(:id,"demo_account_submit").click
driver.title 
begin 
  driver.find_element(:id,"common_account_registration_form")
  #puts 'form render'
rescue
  puts "||||||||||||||||||||||||||||"
  puts 'form not render'
  puts "||||||||||||||||||||||||||||"
end
###########################################
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/forex-tradency-account"
puts 'http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/forex-tradency-account'
puts "MirrorTraiderReal"
#puts "||||||||||||||||||||||||||||"
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
begin
  driver.find_element(:xpath,'/html/body/div[4]/div[1]/div[1]/p[2]/b')
  #puts "form MirrorTrader tested"
rescue
   puts "||||||||||||||||||||||||||||"
  puts 'Error_cam_later'
  puts "||||||||||||||||||||||||||||"
end  
###########################################
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/forex-mam-slave-account"
puts 'http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/forex-mam-slave-account'
puts "PAMMReal"
#puts "||||||||||||||||||||||||||||"
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
begin
 driver.find_element(:xpath,'/html/body/div[4]/div[1]/div[1]/p[2]/b')
 #puts "form PAMM tested"
rescue
  puts "||||||||||||||||||||||||||||"
  puts 'Error_cam_later'
  puts "||||||||||||||||||||||||||||"
end  
###########################################
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/forex-real-account"
puts 'http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/forex-real-account'
puts "MT4"
#puts "||||||||||||||||||||||||||||"
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
  #puts 'form MT4 tested'
rescue
   puts "||||||||||||||||||||||||||||"
  puts 'Error_cam_later'
  puts "||||||||||||||||||||||||||||"
end
###########################################
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/opening-account"
puts 'http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/opening-account'
puts "demoMT4"
#puts "||||||||||||||||||||||||||||"
driver.find_element(:id,"demo_account_demo_account_contact_attributes_first_name").send_keys("Testdemousername")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_email").send_keys("test_mt4_@aforex.ru")
driver.find_element(:id,"demo_account_demo_account_contact_attributes_undivided_phone").send_keys('74951234567')
driver.find_element(:id,"demo_account_submit").click
driver.title 
begin 
  driver.find_element(:id,"common_account_registration_form")
  puts "||||||||||||||||||||||||||||"
  puts 'Error_cam_later'
  puts "||||||||||||||||||||||||||||"
rescue
  #puts 'form MT4 '
end
###########################################
###########################################
driver.navigate.to "http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/opening-tradency"
puts 'http://ec2-54-228-210-182.eu-west-1.compute.amazonaws.com/opening-tradency'
puts "demoMirrorTraider"
#puts "||||||||||||||||||||||||||||"
driver.find_element(:id,"tradency_demo_account_demo_account_contact_attributes_first_name").send_keys("Testdemousername")
driver.find_element(:id,"tradency_demo_account_demo_account_contact_attributes_email").send_keys("test_mt4_@aforex.ru")
driver.find_element(:id,"tradency_demo_account_demo_account_contact_attributes_undivided_phone").send_keys('74951234567')
driver.find_element(:id,"tradency_demo_account_submit").click
begin 
  driver.find_element(:id,"common_account_registration_form")
  puts "||||||||||||||||||||||||||||"
  puts 'Error_cam_later'
  puts "||||||||||||||||||||||||||||"
rescue
  #puts 'form MirrorTrader tested'
end
driver.quit
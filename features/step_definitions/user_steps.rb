Given(/^I have user account$/) do
  User.create(email: 'exampl@examppe.ru', password: '12345678', password_confirmation: '12345678')
end

Given(/^I have admin account$/) do
  User.create(email: 'examp@examppe.ru', password: '12345678', password_confirmation: '12345678', role: 'admin')
end

Given(/^a bits with title "(.*?)" and status "(.*?)" and minbits "(.*?)"$/) do |arg1, arg2, arg3|
  event = Event.create(:title => arg1, :status => arg2, :minbits => arg3)
  event.save
end

Given(/^I sign_in$/) do
  @current_user = User.create(email: 'exampl@examppe.ru', password: '12345678', password_confirmation: '12345678')
  visit '/users/sign_in'
  fill_in "Email", :with => 'exampl@examppe.ru'
  fill_in "Password", :with => '12345678'
  click_button "Sign in"
end

When(/^I go Stawki$/) do
  visit '/events'
end

When(/^I go News$/) do
  visit '/events/new'
end

When(/^I go YourBits$/) do
  visit '/bits/'
end

Given(/^I sign_in_as_admin$/) do
  @current_user = User.create(email: 'examp@examppe.ru', password: '12345678', password_confirmation: '12345678', role: 'admin')
  visit '/users/sign_in'
  fill_in "Email", :with => 'examp@examppe.ru'
  fill_in "Password", :with => '12345678'
  click_button "Sign in" 
end

# When /^I press "([^\"]*)" within "([^\"]*)"$/ do |button,scope_selector|
#   within(scope_selector) do      
#     click_button(button)
#   end
# end


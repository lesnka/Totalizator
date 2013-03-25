require 'spec_helper'

describe User do
  before :each do
    @user = User.create(email: "user@user.ru", password: '12345678', password_confirmation: '12345678',)
    @admin = User.create(email: "admin@admin.ru", password: '12345678', password_confirmation: '12345678')
    
  end


  it 'method sum_pay test' do
    @user.sum_pay.should == 0
  end

  it 'method user_profit test' do
    @user.user_profit.should == 0
  end

 
end
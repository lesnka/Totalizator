require 'spec_helper'

describe User do
  before(:each) do
    User.delete_all
    @user = create :user1
    @user1 = create :user2 
    @user3 = create :user3
    @event = Event.create(title: 'bits', minbits: 100, status: 'suspense')
    @event1 = Event.create(title: 'bits1111', minbits: 100, status: 'win')
    @bit = Bit.create(user_id: @user.id, event_id: @event.id, sum: 200, payed: false)
    @bit1 = Bit.create(user_id: @user1.id, event_id: @event.id, sum: 200, payed: true)
    @bit31 = Bit.create(user_id: @user3.id, event_id: @event.id, sum: 200, payed: false)
    @bit32 = Bit.create(user_id: @user3.id, event_id: @event1.id, sum: 200, payed: true)
    @wallet = Wallet.create(user_id: @user3.id, balance: 200)
    @wallet1 = Wallet.create(user_id: @user3.id, balance: 200)
    @wallet2 = Wallet.create(user_id: @user3.id, balance: 200)
  end
        
  it 'method sum_pay test' do
    @user1.sum_pay.should == 0
   end

  it 'method sum_bits test' do
    @user3.sum_bits == 400
  end

  it 'method price test' do
    @user3.price
    @bit31.reload.payed.should == true
  end

  it 'method self.profit test' do
    User.profit.should == 800
  end

  it 'method sum_pay test_with_payed' do
    @user.sum_pay.should == 200
  end

  it 'method my_win test with  win' do
    @user3.my_win.should == 200   
  end
  
    # it 'method user_profit test with user' do
  #   @user.user_profit.should == 0
  # end
   
end
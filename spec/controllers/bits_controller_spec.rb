require 'spec_helper'

describe BitsController do
  render_views

  describe "POST 'update'" do
    before(:each) do
        @user = create :user1
        sign_in @user
        @event1 = Event.create(:title => "BitsTitle2", :minbits => 200,
                    :status => "suspense")
        @event2 = Event.create(:title => "BitsTitle11", :minbits => 200,
                    :status => "suspense")
        @bit1 = Bit.create(:user_id => @user.id, :event_id => @event1.id, :sum => 200, :payed => false)
        @bit2 = Bit.create(:user_id => @user.id, :event_id => @event2.id, :sum => 200, :payed => false)
    end   

    it "update sum is small" do
      Bit.any_instance.stub(:save).and_return(false)
      put :update, {:id => @bit1.id, :bit => { :sum => 100 }}
      assigns(:bit).should eq(@bit1)
    end  
    
    it "update sum is small notice" do
      put :update, {:id => @bit1.id, :bit => { :sum => 100 }}
      flash[:notice].should == 'Your summa is small. Edit abort'
    end  
    
    it "update sum is small redirect to bit" do
      put :update, {:id => @bit1.id, :bit => { :sum => 100 }}
      response.should redirect_to(bit_url)
    end 

    it "update sum is ok" do
      put :update, {:id => @bit1.id, :bit => { :sum => 300 }}
      @bit1.reload.sum.should == 300
    end 

  end
#####################################################################

describe "pay_this_bit" do
    before(:each) do
        @user = create :user1
        sign_in @user
        @event1 = Event.create(:title => "BitsTitle2", :minbits => 200,
                    :status => "suspense")
        @event2 = Event.create(:title => "BitsTitle11", :minbits => 200,
                    :status => "suspense")
        @bit1 = Bit.create(:user_id => @user.id, :event_id => @event1.id, :sum => 200, :payed => false)
        @bit2 = Bit.create(:user_id => @user.id, :event_id => @event2.id, :sum => 200, :payed => false)
       
    end   

    it "wallet is create" do
      post :pay_this_bit, :id => @bit1.id
      @user.wallet.balance.should_not == nil
    end  
    
    it "bit is payed" do
      post :pay_this_bit, :id => @bit1.id
      @bit1.reload.payed.should == true
    end  
end
##############################################################33
describe "pay_bits" do
    before(:each) do
        @user = create :user1
        sign_in @user
        @event1 = Event.create(:title => "BitsTitle2", :minbits => 200,
                    :status => "suspense")
        @event2 = Event.create(:title => "BitsTitle11", :minbits => 200,
                    :status => "suspense")
        @bit1 = Bit.create(:user_id => @user.id, :event_id => @event1.id, :sum => 200, :payed => false)
        @bit2 = Bit.create(:user_id => @user.id, :event_id => @event2.id, :sum => 200, :payed => false)
       
    end   

    it "wallet is create 2" do
      post :pay_bits
      @user.wallet.balance.should_not == nil
    end  
    
    it "bit is payed" do
      post :pay_bits
      @bit2.reload.payed.should == true
    end  
end
###########################################3
  describe "see_balance" do
    before(:each) do
        @user = create :user1
        sign_in @user
        @event1 = Event.create(:title => "BitsTitle2", :minbits => 200,
                    :status => "suspense")
        @event2 = Event.create(:title => "BitsTitle11", :minbits => 200,
                    :status => "suspense")
        @bit1 = Bit.create(:user_id => @user.id, :event_id => @event1.id, :sum => 200, :payed => false)
        @bit2 = Bit.create(:user_id => @user.id, :event_id => @event2.id, :sum => 200, :payed => false)
        @wallet = Wallet.create(:user_id => @user.id, :balance => 10000)
    end   
    it "wallet is create and notice" do
      post :see_balance
      flash[:notice].should == "#{@wallet.id}redirect to your balance:" 

    end 


  end
    
end
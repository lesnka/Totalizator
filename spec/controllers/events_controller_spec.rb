require 'spec_helper'

describe EventsController do
  render_views
 
##################################################################################
  describe "POST 'create'" do

    describe "failure" do

      before(:each) do
        @attr = { :title => "", :minbits => 0, :status => ""}
      end

      it "should not create a event" do
        lambda do
          post :create, :event => @attr
        end.should_not change(Event, :count) #count возвращает изменение кол-ва событий
      end

      it "should render the 'new' page" do
        post :create, :event => @attr
        response.should render_template('new')
      end
    end

    describe "success" do

      before(:each) do
        @attr = { :title => "BitsTitle", :minbits => 200,
                  :status => "suspense" }
      end

      it "should create a event" do
        lambda do
          post :create, :event => @attr
        end.should change(Event, :count).by(1)
      end

      it "should redirect to the event show page" do
        post :create, :event => @attr
        response.should redirect_to(event_path(assigns(:event)))
      end
    end
  end
##################################################################################
  describe "POST 'make_bit'" do
    
      before(:each) do
        @user = create :user1
        sign_in @user
        @event1 = Event.create(:title => "BitsTitle2", :minbits => 200,
                    :status => "suspense")
        @event2 = Event.create(:title => "BitsTitle11", :minbits => 200,
                    :status => "win")
        @id = @event1.id
      end   

      it "make_bit create bit&" do
        post :make_bit, :id => @id
        Bit.count.should == 1
      end
      

      it "make_bit not create bit with bad parametrs&" do
        post :make_bit, :id => @event2.id
        flash[:notice].should == 'Bit is already not use'
        #assigns(:notice).should == 'Bit is already not use'
      end
      
  end
##################################################################################
  describe "POST 'make_status bits'" do
    
      before(:each) do
        @user = create :user1
        sign_in @user
        @event1 = Event.create(:title => "BitsTitle2", :minbits => 200,
                    :status => "suspense")
        @event2 = Event.create(:title => "BitsTitle11", :minbits => 200,
                    :status => "win")
        @id = @event1.id
      end   

      it "make_status_bits send notice when user no wallet has" do
        post :make_status_bits
        flash[:notice].should == 'No wallet' 
      end
      
      it "make_status_bits what is status" do
        @wallet = Wallet.create(:user_id => @user.id, :balance => 10000)
        @bit1 = Bit.create(:user_id => @user.id, :event_id => @event1.id, :sum => 200, :payed => true)
        post :make_status_bits
        @event1.reload.status.should_not == 'suspense' 
      end
      
      it "redirects to the events list" do
       post :make_status_bits
      response.should redirect_to(events_url)
      end
  
  end

  ##################################################################################
   describe "DELETE destroy" do
      before(:each) do
        
        @event1 = Event.create(:title => "BitsTitle2", :minbits => 200,
                    :status => "suspense")
        
      end   

    it "destroys the requested event" do
      delete :destroy, {:id => @event1.id}
      Event.count.should == 0
    end

    it "redirects to the events list" do
       delete :destroy, {:id => @event1.id}
      response.should redirect_to(events_url)
    end
  end
   
################################################################################## 







end

  
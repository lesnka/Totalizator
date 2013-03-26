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


end


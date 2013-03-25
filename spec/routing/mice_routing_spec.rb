require "spec_helper"

describe MiceController do
  describe "routing" do

    it "routes to #index" do
      get("/mice").should route_to("mice#index")
    end

    it "routes to #new" do
      get("/mice/new").should route_to("mice#new")
    end

    it "routes to #show" do
      get("/mice/1").should route_to("mice#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mice/1/edit").should route_to("mice#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mice").should route_to("mice#create")
    end

    it "routes to #update" do
      put("/mice/1").should route_to("mice#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mice/1").should route_to("mice#destroy", :id => "1")
    end

  end
end

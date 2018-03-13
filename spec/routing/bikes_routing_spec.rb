require "rails_helper"

RSpec.describe BikesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bikes").to route_to("bikes#index")
    end

    it "routes to #new" do
      expect(:get => "/bikes/new").to route_to("bikes#new")
    end

    it "routes to #show" do
      expect(:get => "/bikes/1").to route_to("bikes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bikes/1/edit").to route_to("bikes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bikes").to route_to("bikes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bikes/1").to route_to("bikes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bikes/1").to route_to("bikes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bikes/1").to route_to("bikes#destroy", :id => "1")
    end

  end
end

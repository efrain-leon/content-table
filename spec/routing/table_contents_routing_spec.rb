require "rails_helper"

RSpec.describe TableContentsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/table_contents").to route_to("table_contents#index")
    end

    it "routes to #new" do
      expect(:get => "/table_contents/new").to route_to("table_contents#new")
    end

    it "routes to #show" do
      expect(:get => "/table_contents/1").to route_to("table_contents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/table_contents/1/edit").to route_to("table_contents#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/table_contents").to route_to("table_contents#create")
    end

    it "routes to #update" do
      expect(:put => "/table_contents/1").to route_to("table_contents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/table_contents/1").to route_to("table_contents#destroy", :id => "1")
    end

  end
end

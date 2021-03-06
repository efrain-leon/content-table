require "rails_helper"

RSpec.describe TableContentsController, :type => :routing do
  describe "routing" do
    
    it "routes to #index" do
      expect(:get => "/books/1/table_contents").to route_to("table_contents#index", :book_id => "1")
    end

    it "routes to #new" do
      expect(:get => "/books/1/table_contents/new").to route_to(:action => "new", :controller => "table_contents", :book_id => "1")
    end

    it "routes to #show" do
      expect(:get => "/books/1/table_contents/1").to route_to("table_contents#show", :id => "1", :book_id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/books/1/table_contents/1/edit").to route_to("table_contents#edit", :id => "1", :book_id => "1")
    end

    it "routes to #create" do
      expect(:post => "/books/1/table_contents").to route_to("table_contents#create", :book_id => "1")
    end

    it "routes to #update" do
      expect(:put => "/books/1/table_contents/1").to route_to("table_contents#update", :id => "1", :book_id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/books/1/table_contents/1").to route_to("table_contents#destroy", :id => "1", :book_id => "1")
    end

  end
end

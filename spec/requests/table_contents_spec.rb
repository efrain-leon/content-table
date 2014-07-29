require 'rails_helper'

RSpec.describe "TableContents", :type => :request do
  describe "GET /table_contents" do
    
    before do
      @book = FactoryGirl.create(:book)
    end
    
    it "works! (now write some real specs)" do
      get book_table_contents_path(@book)
      expect(response.status).to be(200)
    end
  end
end

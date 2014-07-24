require 'rails_helper'

RSpec.describe "TableContents", :type => :request do
  describe "GET /table_contents" do
    it "works! (now write some real specs)" do
      get table_contents_path
      expect(response.status).to be(200)
    end
  end
end

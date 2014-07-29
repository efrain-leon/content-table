require 'rails_helper'

RSpec.describe "books/index", :type => :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :title => "Title"
      ),
      Book.create!(
        :title => "Title1"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 1
    assert_select "tr>td", :text => "Title1".to_s, :count => 1
  end
end

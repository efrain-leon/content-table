require 'rails_helper'

RSpec.describe "table_contents/new", :type => :view do
  before(:each) do
    
    @book = FactoryGirl.create(:book)
    
    assign(:table_content, TableContent.new(
      :content => "MyString",
      :level => 1,
      :order => 1,
      :book_id => @book.id
    ))
  end

  it "renders new table_content form" do
    render

    assert_select "form[action=?][method=?]", book_table_contents_path(@book), "post" do

      assert_select "input#table_content_content[name=?]", "table_content[content]"

      assert_select "input#table_content_level[name=?]", "table_content[level]"

      assert_select "input#table_content_order[name=?]", "table_content[order]"
    end
  end
end

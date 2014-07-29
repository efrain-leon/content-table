require 'rails_helper'

RSpec.describe "table_contents/edit", :type => :view do
  before(:each) do
    
    @book = FactoryGirl.create(:book)
    
    @table_content = assign(:table_content, TableContent.create!(
      :content => "MyString",
      :level => 1,
      :order => 1,
      :book_id => @book.id
    ))
  end

  it "renders the edit table_content form" do
    render

    assert_select "form[action=?][method=?]", book_table_content_path(@book, @table_content), "post" do

      assert_select "input#table_content_content[name=?]", "table_content[content]"

      assert_select "input#table_content_level[name=?]", "table_content[level]"

      assert_select "input#table_content_order[name=?]", "table_content[order]"
    end
  end
end

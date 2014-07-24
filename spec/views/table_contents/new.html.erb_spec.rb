require 'rails_helper'

RSpec.describe "table_contents/new", :type => :view do
  before(:each) do
    assign(:table_content, TableContent.new(
      :content => "MyString",
      :level => 1,
      :order => 1,
      :id_book => 1
    ))
  end

  it "renders new table_content form" do
    render

    assert_select "form[action=?][method=?]", table_contents_path, "post" do

      assert_select "input#table_content_content[name=?]", "table_content[content]"

      assert_select "input#table_content_level[name=?]", "table_content[level]"

      assert_select "input#table_content_order[name=?]", "table_content[order]"

      assert_select "input#table_content_id_book[name=?]", "table_content[id_book]"
    end
  end
end

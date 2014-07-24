require 'rails_helper'

RSpec.describe "table_contents/index", :type => :view do
  before(:each) do
    assign(:table_contents, [
      TableContent.create!(
        :content => "Content",
        :level => 1,
        :order => 2,
        :id_book => 3
      ),
      TableContent.create!(
        :content => "Content",
        :level => 1,
        :order => 2,
        :id_book => 3
      )
    ])
  end

  it "renders a list of table_contents" do
    render
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end

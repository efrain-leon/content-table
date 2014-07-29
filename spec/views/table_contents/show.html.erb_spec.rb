require 'rails_helper'

RSpec.describe "table_contents/show", :type => :view do
  before(:each) do
    @book = FactoryGirl.create(:book)
    
    @table_content = assign(:table_content, TableContent.create!(
      :content => "Content",
      :level => 1,
      :order => 2,
      :book_id => @book.id
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end

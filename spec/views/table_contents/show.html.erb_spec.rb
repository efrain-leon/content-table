require 'rails_helper'

RSpec.describe "table_contents/show", :type => :view do
  before(:each) do
    @table_content = assign(:table_content, TableContent.create!(
      :content => "Content",
      :level => 1,
      :order => 2,
      :id_book => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end

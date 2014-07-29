require 'rails_helper'

RSpec.describe TableContent, :type => :model do
  let(:table_content) { FactoryGirl.build(:table_content) }
  it { table_content.should be_valid }
  it { table_content.should be_a(TableContent) }
  it { should belong_to :book}
  it { table_content.should validate_presence_of(:content) }
  it { table_content.should validate_presence_of(:level) }
  it { table_content.should validate_presence_of(:order) }
  it { table_content.should validate_presence_of(:book_id) }
  it { table_content.should validate_uniqueness_of(:order) }
end

require 'rails_helper'

RSpec.describe Book, :type => :model do
  let(:book) { FactoryGirl.build(:book) }
  it { book.should be_valid}
  it { book.should be_a(Book) }
  it { book.should have_many(:table_contents).dependent(:destroy) }
  it { book.should validate_presence_of(:title) }
end

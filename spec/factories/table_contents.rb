# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :table_content do
    content "MyString"
    level 1
    order 1
    book_id 1
  end
end

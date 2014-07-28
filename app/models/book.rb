class Book < ActiveRecord::Base
  has_many :table_contents
end

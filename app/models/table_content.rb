class TableContent < ActiveRecord::Base
  belongs_to :book
  
  validates :content, :level, :order, :book_id, presence: true
end

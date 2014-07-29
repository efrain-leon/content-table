class TableContent < ActiveRecord::Base
  belongs_to :book
  
  validates :content, :level, :book_id, presence: true
  validates :order, presence: true, uniqueness: true
  validates :level, :order,  numericality: { only_integer: true, greater_than: 0 }
end

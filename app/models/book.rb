class Book < ActiveRecord::Base
  has_many :table_contents, :dependent => :destroy
  
  validates :title, presence: true, uniqueness: { case_sensitive: false }
end

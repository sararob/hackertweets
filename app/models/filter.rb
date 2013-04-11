class Filter < ActiveRecord::Base
  attr_accessible :keyword
  
  validates :keyword, presence: true
end

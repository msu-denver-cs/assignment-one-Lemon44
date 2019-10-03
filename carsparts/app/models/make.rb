class Make < ApplicationRecord
  has_many :parts
  belongs_to :car 
end

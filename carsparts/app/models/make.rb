class Make < ApplicationRecord
  has_many :parts
  has_many :cars 
end

class Part < ApplicationRecord
  has_and_belongs_to_many :cars
  has_one :make
end

class Part < ApplicationRecord
  has_many :cars_parts
  has_many :cars, through: :cars_parts
end

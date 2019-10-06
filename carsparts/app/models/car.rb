class Car < ApplicationRecord
  belongs_to :make
  has_many :cars_parts
  has_many :parts, through: :cars_parts

  validates :vin, length: { is: 17 }
end

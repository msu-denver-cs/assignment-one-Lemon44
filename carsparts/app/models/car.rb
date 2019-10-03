class Car < ApplicationRecord
  has_and_belongs_to_many :parts
  belongs_to :make
end

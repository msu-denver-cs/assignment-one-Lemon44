class Make < ApplicationRecord
    has_many :cars
    has_many :parts
end

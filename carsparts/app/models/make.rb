class Make < ApplicationRecord
    has_many :cars

    validates :name, length: { minimum: 2, maximum: 20 }
    validates :model, length: { minimum: 2, maximum: 20 }
    validates :year, length: { in: 6..20 }
    
    validates :name, :model, :year, presence: true

end

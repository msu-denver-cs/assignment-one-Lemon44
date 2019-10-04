require 'test_helper'

class MakeTest < ActiveSupport::TestCase
validates :name, length: { minimum: 2, maximum: 20 }
validates :model, length: { minimum: 2, maximum: 20 }
validates :year, 
end

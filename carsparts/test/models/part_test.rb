require 'test_helper'

class PartTest < ActiveSupport::TestCase
  validates :name, length: { minimum: 2, maximum: 50 }

end

  test "for empty name" do
    p = Part.create({:name => ""})
    refute p.valid?
    refute p.save
    assert_equal({:name=>["is too short (minimum is 2 characters)"]},
      p.errors.messages)
  end
require 'test_helper'

class PartTest < ActiveSupport::TestCase

  test "for empty name" do
    p = Part.create({:name => ""})
    refute p.valid?
    refute p.save
    assert_equal({:name=>["is too short (minimum is 2 characters)"]},
      p.errors.messages)
  end

  test "for one character name" do
    p = Part.create({:name => "a"})
    refute p.valid?
    refute p.save
    assert_equal({:name=>["is too short (minimum is 2 characters)"]},
      p.errors.messages)
  end
  
end
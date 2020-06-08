require './test/test_helper'
require './lib/enigma'
require './lib/key'

class KeyTest < Minitest::Test

  def setup
    @key = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_it_can_randomize_numbers
   assert_equal 5, @key.randomize_numbers.length
  end

end

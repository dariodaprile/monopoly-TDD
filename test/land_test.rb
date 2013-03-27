require "minitest/autorun"
# start from the super clas in order
require "./lib/tile"
require "./lib/land"

class LandTest < MiniTest::Unit::TestCase

  def setup
    create_land
  end

	def test_rent_is_defined
	  assert_equal 100, @land.rent
	end

  def test_has_value
    assert_equal 1000, @land.value
  end

  def test_change_availablity
    assert_equal false, @land.available?(false)
  end

  #def see_avalability
   # assert_equal true, @land.see_available
  #end

  private

  def create_land
     @land = Land.new(100, 1000, "Mayfair", 10)
  end

end
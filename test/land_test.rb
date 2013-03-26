require "minitest/autorun"
require "./lib/land"
require "./lib/tile"

class LandTest < MiniTest::Unit::TestCase

	def test_rent_is_defined
	land = Land.new(100, 1000, "Mayfair")
	assert_equal 100, land.calculate_rent
	end

  def test_has_value
    land = Land.new(100, 1000, "Mayfair")
    assert_equal 1000, land.value
  end



  # def test_is_aveilable
end
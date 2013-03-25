require "minitest/autorun"
require "./lib/land"

class LandTest < MiniTest::Unit::TestCase

	def test_rent_is_defined
	land = Land.new(100)
	assert_equal 100, land.calculate_rent
	end
end
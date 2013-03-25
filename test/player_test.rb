require "minitest/autorun"
require "./lib/player"

class PlayerTest < MiniTest::Unit::TestCase
	
	def setup
		@player = Player.new(1000, "Ben")
	end

	def test_pay_rent
		@player.pay_rent 200
		assert_equal 800, @player.balance
	end
	
	def test_cant_afford_rent
		@player.pay_rent 2000
		assert_equal 0, @player.balance 
	end

	def test_own_land_when_land_bought
		@player.buy_land "Mayfair", 800
		assert_equal true, @player.owns_land?("Mayfair")
	end

	def test_balance_updated_when_land_bought
		@player.buy_land "Mayfair" , 800
		assert_equal 200, @player.balance
	end
	
	def test_cant_afford_land
		@player.buy_land "Mayfair", 1200
		assert_equal 1000, @player.balance
		assert_equal false, @player.owns_land?("Mayfair")
	end

	def test_can_own_much_land
		@player.buy_land "Mayfair", 400
		@player.buy_land "Park Lane", 350
		assert_equal true, @player.owns_land?("Mayfair")
		assert_equal true, @player.owns_land?("Park Lane")
	end

end
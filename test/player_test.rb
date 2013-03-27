require "minitest/autorun"
require "./lib/player"


class PlayerTest < MiniTest::Unit::TestCase

  def setup
    create_player
  end

  def test_initial_balance
  	assert_equal start_balance, @player.balance
  end

  def test_intial_position_is_zero
    assert_equal 0, @player.position
  end

  def test_name_exists
    assert_equal "Ben", @player.name
  end

  def test_pay_rent
    @player.pay_rent 200
    assert_equal start_balance - 200, @player.balance
  end

  def test_cant_afford_rent
    @player.pay_rent(start_balance + 500)
    assert_equal 0, @player.balance
  end

  def test_own_land_when_land_bought
  	skip
    @player.buy_land "Mayfair", 800
    assert @player.owns_land?("Mayfair")
  end

  def test_balance_updated_when_land_bought
  	skip
  	mayfair = Land.new("Mayfair", 800)
    @player.buy_land mayfai
    assert_equal 200, @player.balance
  end

  def test_cant_afford_land
  	skip
    @player.buy_land "Mayfair", 1200
    assert_equal 1000, @player.balance
    refute @player.owns_land?("Mayfair")
  end

  def test_can_own_much_land
  	skip
    @player.buy_land "Mayfair", 400
    @player.buy_land "Park Lane", 350
    assert_equal true, @player.owns_land?("Mayfair")
    assert_equal true, @player.owns_land?("Park Lane")
  end

  def test_balance_update_when_receive_rent
    @player.receive_rent(200)
    assert_equal 1200, @player.balance
  end

  private

  def create_player
    @player = Player.new("Ben")
  end

  def start_balance
  	Player::STARTING_BALANCE
  end
end

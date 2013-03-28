require "minitest/autorun"
# require "mocha/setup"
require "./lib/player"
require "./lib/dice"
require "./lib/tile"
require "./lib/land"
require "./lib/engine"
require "./lib/choose"

class ChooseTest < MiniTest::Unit::TestCase

  def setup
    create_player
    create_land
    create_choose
  end

  # def test_run_works_with_get_stubbed
  #   stub_gets.returns("hello)")
  #   assert_output("hello") {@engine.take_turn}
  # end

  def test_option_to_buy_when_player_is_on_available_land
  @player.position = @land.position
  @land.available?(true)
  @choose.buy?(true)
  assert_equal true, @player.owns_land?(@land)
  end

  # def test_pay_rent_when_player_is_on_unavailable_land
  # @player.position = @land.position
  # @land.available?(false)

  # end

  private

  def create_player
    @player = Player.new("sam")
  end

  def create_land
    @land = Land.new(20, 200, "New Street", 1)
  end

  def create_choose
    @choose = Choose.new
  end
end
require "minitest/autorun"
# require "mocha/setup"
require "./lib/engine"
require "./lib/player"
require "./lib/dice"


class EngineTest < MiniTest::Unit::TestCase

  def setup
    create_player
    create_land
  end

  # def test_run_works_with_get_stubbed
  #   stub_gets.returns("hello)")
  #   assert_output("hello") {@engine.take_turn}
  # end



private
  def create_player
    @player = Player.new("sam")
  end

  def create_land
    @land = Land.new(20, 200, "New Street", 0)
  end
end
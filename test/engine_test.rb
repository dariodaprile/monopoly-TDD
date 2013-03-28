require "minitest/autorun"
# require "mocha/setup"
require "./lib/engine"
require "./lib/player"
require "./lib/dice"


class EngineTest < MiniTest::Unit::TestCase

  def setup
    create_player
  end

  # def test_run_works_with_get_stubbed
  #   stub_gets.returns("hello)")
  #   assert_output("hello") {@engine.take_turn}
  # end

  # def test_roll_dice
  # end
  def test_player_position_increases_6_first_go
    @player.move(6)
    assert_equals @player.position, 5
  end

end

private
  def create_player
    @player = Player.new("sam")
  end

require "minitest/autorun"
require "./lib/player"
require "./lib/tile"
require "./lib/land"
require "./lib/dice"
require "./lib/board"

class MoveTest < MiniTest::Unit::TestCase

  def test_player_position_increases_2_to_12_each_go
    assert_includes 2..12, @player_move
  end
end


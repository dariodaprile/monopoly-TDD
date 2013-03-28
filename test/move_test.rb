require "minitest/autorun"
require "./lib/player"
require "./lib/tile"
require "./lib/land"
require "./lib/dice"
require "./lib/board"
require "./lib/move"

class MoveTest < MiniTest::Unit::TestCase

  def setup
    create_move
    create_player
  end

  def test_player_position_increases_6_first_go
    @move.update_position(@player,6)
    assert_equal  6, @player.position
  end

  def test_position_goes_to_start_of_board_after_loop
    @player.position = 38
    @move.update_position(@player, 4)
    assert_equal 2, @player.position
  end
  private

  def create_player
    @player = Player.new("sam")
  end

  def create_move
    @move = Move.new
  end
end

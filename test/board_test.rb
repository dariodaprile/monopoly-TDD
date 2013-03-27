require "minitest/autorun"
require "./lib/tile"
require "./lib/land"
require "./lib/board"

class BoardTest < MiniTest::Unit::TestCase

  def setup
    create_board
  end

  def test_land_at_37_is_called_37_street
    assert_equal "37 street", @board.land_at(37).name
  end

  private

  def create_board
    @board = Board.new
  end
end
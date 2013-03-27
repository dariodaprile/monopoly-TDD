require "minitest/autorun"
require "./lib/tile"

class TileTest < MiniTest::Unit::TestCase
  def setup
    create_tile
  end
  def test_has_name
    assert_equal "Mayfair",@tile.name
  end

  def test_is_buyable
    assert_equal true, @tile.buyable
  end

  def test_position_is_set_at_initialize
    assert_equal 10, @tile.position
  end

# we create a method private ( TBD ?????)
private

  def create_tile
    @tile = Tile.new("Mayfair", true, 10)
  end

end
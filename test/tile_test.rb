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
    assert_equal true, @tile.buyable?
  end

# we create a method private ( TBD ?????)
private

  def create_tile
    @tile = Tile.new("Mayfair", true)
  end
end
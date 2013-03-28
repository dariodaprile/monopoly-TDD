require "minitest/autorun"
require "./lib/dice"

class DiceTest < MiniTest::Unit::TestCase

def setup
  create_dice
end

def test_generate_number_2_to_12
assert_includes 2..12, @dice.roll
end



private

  def create_dice
    @dice = Dice.new
  end
end

# There's better ways of doing this with mocks
# but this is a similar principle

require "minitest/autorun"
require "mocha/setup"
require "./lib/engine"


class EngineTest < MiniTest::Unit::TestCase


  def test_run_works_with_get_stubbed
    stub_gets.returns("hello)")
    assert_output("hello") {@engine.take_turn}
  end

  # def test_roll_dice
  # end


end

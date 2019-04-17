require_relative "reverser"
require "test/unit"

class TestOddReverser < Test::Unit::TestCase

  def test_simple
    assert_equal("Hola mundo!", Reverser.new("Hola mundo!").original())
    assert_equal("Holn muado!", Reverser.new("Hola mundo!").reverse_odds())
    assert_equal("Ho!", Reverser.new("Ho!").reverse_odds())
    assert_equal("H", Reverser.new("H").reverse_odds())
    assert_equal("Taia ns aetfsR rof taea l Aidsrh.", Reverser.new("This is a test for Rafael Andara.").reverse_odds())
  end

end
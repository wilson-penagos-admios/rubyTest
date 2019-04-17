require_relative "palindrome"
require "test/unit"

class TestOddReverser < Test::Unit::TestCase

  def test_simple
    assert_equal(false, Palindrome.new("Hola mundo!").palindrome())
    assert_equal(false, Palindrome.new("arepa").palindrome())
    assert_equal(true, Palindrome.new("arepera").palindrome())
  end

end
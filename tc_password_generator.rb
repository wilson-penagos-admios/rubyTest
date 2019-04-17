require_relative "password_generator"
require "test/unit"

class TestOddReverser < Test::Unit::TestCase

  def test_simple
    assert_match(/[a-z]/, PasswordGenerator.new().generate())
    assert_equal(10, PasswordGenerator.new().generate().length)
    assert_equal(15, PasswordGenerator.new().generate(length = 15).length)
    assert_match(/[A-Z]+/, PasswordGenerator.new().generate(length = 11, upcases = true))
    assert_match(/[0-9]+/, PasswordGenerator.new().generate(length = 17, upcases = true, numbers = true))
    assert_match(/[!@#\$%^&*()]+/, PasswordGenerator.new().generate(length = 32, upcases = true, numbers = true, symbols = true))
    assert_match(/[!@#\$%^&*()]+/, PasswordGenerator.new().generate(length = 5, upcases = true, numbers = true, symbols = true))
  end

end
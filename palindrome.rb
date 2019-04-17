class Palindrome

  def initialize(objectString)
    raise unless objectString.is_a?(String)
    @x = objectString
  end

  def original
    @x
  end

  def palindrome
    reversed = @x.reverse()
    reversed == @x
  end

end


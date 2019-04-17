class Reverser

  def initialize(objectString)
    raise unless objectString.is_a?(String)
    @x = objectString
  end

  def original
    @x
  end

  def reverse_odds
    baseString = String.new(@x)
    stringLength = baseString.length
    # Avoiding one odd char strings
    if stringLength < 4
      return baseString
    end
    baseCount = 0
    result = ""
    for char in baseString.split('')
      if baseCount % 2 == 0
        result << char
      else
        # Note that this should happen stringLength/4.floor times
        result << baseString[stringLength - baseCount  - 1]
      end
      baseCount += 1
    end
    puts result
    result
  end

end


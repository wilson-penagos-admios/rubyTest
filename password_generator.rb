class PasswordGenerator

  CHARS = ('a'..'z').to_a
  UPCASES = ('A'..'Z').to_a
  NUMBERS = %w{0 1 2 3 4 5 6 7 8 9}
  SYMBOLS = %w{! @ # $ % ^ & * ( ) )}

  def initialize
    @value_chain = ""
    puts NUMBERS
  end

  def get
    @value_chain
  end

  def generate(length = 10, upcases = false, numbers = false, symbols = false)
    if length < 10
      length = 10
    end
    result = ""
    mainSourceChars = CHARS
    upcasesCount = 0
    numbersCount = 0
    symbolsCount = 0
    enforceCharsCount = 0
    if upcases
      mainSourceChars.concat(UPCASES)
      enforceCharsCount += 1
    end
    if numbers
      mainSourceChars.concat(NUMBERS)
      enforceCharsCount += 1
    end
    if symbols
      mainSourceChars.concat(SYMBOLS)
      enforceCharsCount += 1
    end

    for x in (0...length-enforceCharsCount)
      nextChar = mainSourceChars[rand(mainSourceChars.length - 1)]
      if upcases and UPCASES.any? { |char| char == nextChar}
        upcasesCount += 1
      end
      if numbers and NUMBERS.any? { |char| char == nextChar}
        numbersCount += 1
      end
      if symbols and SYMBOLS.any? { |char| char == nextChar}
        symbolsCount += 1
      end
      result << nextChar
    end

    for y in (0..enforceCharsCount-1)
      if upcases and upcasesCount == 0
        nextChar = UPCASES[rand(UPCASES.length - 1)]
        upcasesCount += 1
      elsif numbers and numbersCount == 0
        nextChar = NUMBERS[rand(NUMBERS.length - 1)]
        numbersCount += 1
      elsif symbols and symbolsCount == 0
        nextChar = SYMBOLS[rand(SYMBOLS.length - 1)]
        symbolsCount += 1
      else upcasesCount > 0 and numbersCount > 0 and symbolsCount > 0
        nextChar = mainSourceChars[rand(mainSourceChars.length - 1)]
      end
      result << nextChar
    end

    @value_chain = result
    puts result
    result
  end

end

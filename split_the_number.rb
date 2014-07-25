def split_the_number(string)
  @numbers, letters = string.split(' ')
  @symbol = letters.tr('A-Za-z', '')
  @letters = letters.delete(symbol)
end

def calculation
end

def value_for_letter
  i = 0

  while i < @numbers.count
    key_value = {}
    puts @symbol
    # key_value[@symbol[i]] => @numbers[i]
    i += 0
  end
end

s = '3413289830 a-bcdefghij'
split_the_number(s)

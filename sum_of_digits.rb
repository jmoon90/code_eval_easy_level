def sum_of_digits(array)
  array.inject(:+)
end

def digits(string)
  array_of_digits = string.split('').map(&:to_i)
  sum_of_digits(array_of_digits)
end

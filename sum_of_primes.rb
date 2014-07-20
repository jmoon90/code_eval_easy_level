def prime_numbers(number)
  numbers = []
  (2..number).each do |x|
    result = Math.sqrt(x) ** 2 == x ? is_prime_number?(x, (2..Math.sqrt(x).to_i)) : is_prime_number?(x, (2..Math.sqrt(x).to_i + 1))
    numbers << x if result == true && numbers.count < 1000
  end

  sum_of_prime_numbers(numbers)
end

def is_prime_number?(check_num, numbers)
  numbers.each do |x|
    return false if (check_num % x) == 0 && check_num != 2
  end
  return true
end

def sum_of_prime_numbers(num)
  puts num.inject(:+)
end

def first_x_prime_numbers
  prime_numbers(8000)
end

first_x_prime_numbers

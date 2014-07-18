def multiplication_table(number)
  i = 1

  numbers = []
  next_number = 0
  while i < 13
    next_number = next_number + number
    numbers << next_number
    i += 1
  end
  string_of_numbers(numbers)
  puts
end

def string_of_numbers(numbers)
  array = formatted_numbers(numbers.reverse!)
  final_output(array)
end

def formatted_numbers(numbers)
  array = []
  numbers.each_with_index do |x, i|
    if x >= 100
      array << "#{x} "
    elsif x >= 10 && numbers[i - 1] >= 100
      array << "#{x} "
    elsif x >= 1 && numbers[i - 1] > 9
      array << "#{x}  "
    elsif x >= 10
      array << "#{x}  "
    else
      array << "#{x}   "
    end
  end
    array
end

def final_output(array)
  array.reverse!
  array.each_with_index do |x, i|
    if i == 0 && x.to_i < 10
      print " #{x}"
    else
      print x
    end
  end
end

def current_multiplication
  number = 1
  while number < 13
    multiplication_table(number)
    number += 1
  end
end

current_multiplication

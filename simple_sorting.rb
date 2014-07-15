# string = "70.920 -38.797 14.354 99.323 90.374 7.581 -37.507 -3.263 40.079 27.999
string = '70.920 -38.797 14.354 99.323 90.374 7.581'



string3 = '-37.507 -3.263 40.079 27.999 65.213 -55.552'




def string_to_numbers(string)
  numbers = string.split(' ').map do |x|
    x.to_f
  end
  sorted_numbers(numbers)
end

def sorted_numbers(numbers)
  i = 0
  x = 0
  while i < (numbers.count + x)
    smallest_num = smallest_number(numbers)
    if (i + 1) == (numbers.count + x)
      puts '%.3f' % smallest_num
    else
      print "#{'%.3f' % smallest_num} "
    end
    numbers.delete(smallest_num)
    x += 1
    i += 1
  end
end

def smallest_number(numbers)
  low_number = numbers[0]
  numbers.each do |x|
    low_number = x if x < low_number
  end
  low_number
end

string_to_numbers(string3)
string_to_numbers(string)


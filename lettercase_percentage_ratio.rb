string = 'AAbbAA'
string1 = 'VUJHqMz'

def lettercase_counter(letters)
  counter = { uppercase: 0, lowercase: 0 }
  letters.each do |x|
    x == x.upcase ? counter[:uppercase] += 1 : counter[:lowercase] += 1
  end
  counter
end

def percentage_calculator(counter)
  uppercase_percentage = '%.2f' % (counter[:uppercase].to_f / counter.values.inject(:+).to_f * 100)
  lowercase_percentage = '%.2f' % (100 - uppercase_percentage.to_f)
  { uppercase_percentage: uppercase_percentage, lowercase_percentage: lowercase_percentage }
end

def message(percentage)
  "lowercase: #{percentage[:lowercase_percentage]} uppercase: #{percentage[:uppercase_percentage]}"
end

def run(string)
  counter = lettercase_counter(string.strip.split(''))
  puts message(percentage_calculator(counter))
end

run(string)
run(string1)

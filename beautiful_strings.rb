def beautiful_string(string)
  @beauty = 0

    if string.match(/\W+/)
      string.gsub!(/\W+/, '').delete(' ').split('').each do |x|
        x = x.downcase
        @beauty += letter_value["#{x}"]
      end
    else
      string.delete(' ').split('').each do |x|
        x = x.downcase
        @beauty += letter_value["#{x}"]
      end
    end

   puts @beauty
end

def letter_value
  { 'a' => 26, 'b' => 25, 'c' => 24, 'd' => 23, 'e' => 22,
    'f' => 21, 'g' => 20, 'h' => 19, 'i' => 18, 'j' => 17,
    'k' => 16, 'l' => 15, 'm' => 14, 'n' => 13, 'o' => 12,
    'p' => 11, 'q' => 10, 'r' => 9, 's' => 8, 't' => 7,
    'u' => 6, 'v' => 5, 'w' => 4, 'x' => 3, 'y' => 2, 'z' => 1
   }
end


abc = 'ABbCcc'
string = "Good luck in the Facebook Hacker Cup this year!"
str = 'Ignore punctuation, please :)'

beautiful_string(abc)
beautiful_string(string)
beautiful_string(str)


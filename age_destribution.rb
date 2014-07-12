def determine_status(age)
  age = age.to_i

  if (0..2).include?(age)
    puts 'Home'
  elsif (3..4).include?(age)
    puts 'Preschool'
  elsif (5..11).include?(age)
    puts 'Elementary school'
  elsif (12..14).include?(age)
    puts 'Middle school'
  elsif (15..18).include?(age)
    puts 'High school'
  elsif (19..22).include?(age)
    puts 'College'
  elsif (23..65).include?(age)
    puts 'Work'
  elsif (66..100).include?(age)
    puts 'Retirement'
  else
    puts 'This program is for humans'
  end
end

num=[25, 92, 85, 92, 100, 71,92,64,54,63]

num.each do |x|
  determine_status(x)
end

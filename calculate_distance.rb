def x_and_y(coor1, coor2)
  coor1 = coor1.split(' ')
  coor2 = coor2.split(' ')

  coordinates(coor1, coor2)
end

def coordinates(coor1, coor2)
  x = difference(coor1[0], coor2[0])
  y = difference(coor1[1], coor2[1])
  puts calculdate_distance(x, y)
end

def difference(n, n1)
  n.to_i - n1.to_i
end

def calculdate_distance(x, y)
  Math.sqrt(x.to_i** 2 + y.to_i** 2).to_i
end
# line = '34,-88 10,-56'

line = '(25, 4) (1, -6)'
line = line.split(') ')

line0 = line[0].gsub /[(),]/, ' '
line1 = line[1].gsub /[(),]/, ' '
x_and_y(line0, line1)


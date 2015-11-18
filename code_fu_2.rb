# Print the neighbors of an element in a 3x3 integer matrix, given as input from the command line
#
# 2 3 4
# 5 6 7
# 8 9 1
#
# 6 => 2 3 4 5 7 8 9 1
# 1 => 6 7 9
# 5 => 2 3 6 8 9

def adjacent(matrix,dimension)
  puts "Enter element to find adjacent values: "
  number = gets.to_i
  for i in 0..(dimension - 1)
    for j in 0..(dimension - 1)
      if number == matrix[i][j]
        x = i
        y = j
      end
    end
  end
  puts "Neighbour elements"
  for i in 0..(dimension - 1)
    for j in 0..(dimension - 1)
      if (i == x-1 || i == x+1 || i == x) && (j == y-1 || j == y+1 || j == y)
        if matrix[i][j] != number
          puts matrix[i][j]
        end
      end
    end
  end
end

dimension = 3
matrix = Array.new(dimension){Array.new(dimension)}
puts "Enter elements"
for i in 0..(dimension - 1)
  for j in 0..(dimension - 1)
    matrix[i][j] = gets.to_i
  end
end
p matrix
adjacent(matrix,dimension)

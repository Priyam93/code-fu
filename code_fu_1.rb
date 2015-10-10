# Print the second highest element within a list of numbers input from the command line

# 1 0 1 -4 0 -1 2 3 5 -5 -7 8 1 => '5'
# 5 3 2 8 9 1 12 => '9'

def  sort(numbers)
  n=numbers.length
  for j in 1..(n - 1)
    highest = numbers[j]
    i = j - 1
    while i >= 0 and numbers[i] > highest
      numbers[i+1] = numbers[i]
      i = i - 1
    end
    numbers[i+1] = highest
  end
  puts "Sorted numbers: #{numbers}"
  numbers = numbers.uniq
  puts "Second highest number is #{numbers[1]}"
end

puts "Enter array elements"
array_elements = gets
numbers = array_elements.split.map(&:to_i)
sort(numbers)

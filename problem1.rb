#Write a Ruby program that iterates through an array of numbers.
# Stop the iteration when a number divisible by 7 is encountered and print the numbers processed until that point.

puts "Enter the size of array"
num = gets.chomp.to_i
numbers = Array.new(num)

puts "Enter the elements"
for i in 0...num
  numbers[i] = gets.chomp.to_i
end

for i in 0...num
  if numbers[i] % 7 == 0
    break
  else
    puts numbers[i]
  end
end

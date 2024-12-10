#Create a Ruby program that loops through numbers from 1 to 20. Skip numbers that are multiples of 3 and print the rest.

puts "Enter the size of array"
n = gets.chomp.to_i
numbers = Array.new(n)
for i in 0...n
    puts "Enter the number"
    numbers[i] = gets.chomp.to_i
end

for i in 0...n
    if numbers[i] % 3 != 0
        puts numbers[i]
    end
end
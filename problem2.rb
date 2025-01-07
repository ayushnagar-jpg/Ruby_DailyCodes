

puts "Enter the size of array"
n = gets.chomp.to_i
numbers = Array.new(n)
for i in 0...n
    puts "Enter the number"
    numbers[i] = gets.chomp.to_i
end

for i in 0...n
    if numbers[i] % 3 == 1
     next 
    else puts number[i]
    end
end
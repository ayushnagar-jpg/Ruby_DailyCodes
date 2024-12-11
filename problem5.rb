# Create a method in Ruby that takes an array of strings and a string as input. The method should return the index 
# of the string in the array and exit immediately if a match is found. If no match is found, return -1.

puts "Enter the size of array"
n = gets.chomp.to_i
strings = Array.new(n)

puts "Enter the strings"
for i in 0...n
    strings[i] = gets.chomp
end

puts "Enter the string to search"
search = gets.chomp

def search_string(strings, search)
    for i in 0...strings.length
        if strings[i] == search
            return i
        end
    end
    return -1
end

index = search_string(strings, search)

if index == -1
  puts "String not found."
else
  puts "String found at index #{index}."
end
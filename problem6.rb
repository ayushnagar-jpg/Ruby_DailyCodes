#Write a Ruby program to process an array of names. If a specific name (e.g., "exit") is found,
# immediately stop the processing using throw and print a message indicating the name was found.

puts "Enter the size of array"
n = gets.chomp.to_i
names = Array.new(n)
for i in 0..n-1
    puts "Enter the name"
    names[i] = gets.chomp
end

puts "Enter the name to search"
name = gets.chomp
#for i in 0..n-1

  catch :found do
    for i in 0..n-1
      if names[i] == name
        puts "Name found at index #{i}"
        throw :found
      end
    end
    puts "Name not found."
  end
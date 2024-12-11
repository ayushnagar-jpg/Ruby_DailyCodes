#Write a program that simulates a simple counter. It attempts to divide a number by a given divisor. 
#If the divisor is 0, retry the division after prompting the user for a new divisor

loop do
  puts "Enter a number"
  num = gets.chomp.to_i
  puts "Enter a divisor"
  divisor = gets.chomp.to_i

 begin
    raise "Error: Invalid divisor" if divisor == 0
    puts num/divisor
   break
    rescue=>e

    puts "Invalid divisor. Please enter a non-zero divisor"
    puts "Enter a divisor"
    
    divisor = gets.chomp.to_i
    retry
 end
end

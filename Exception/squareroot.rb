#4. Problem Statement: Create a Ruby program that calculates the square root of a number provided by the user.
#  If the user provides invalid input, handle the exception and prompt the user to re-enter the value. 
#  Use nested exception handling to retry the input process if an error occurs.
begin
puts"Enter a Number:"

number = gets.chomp.to_f
raise ArgumentError , "Number must be positive" if number < 0

 squareroot = Math.sqrt(number)
 puts"Square root of #{number} is #{squareroot}"
rescue ArgumentError=> e  
  puts"Error: #{e.message}"
  puts"Please dear try again!"
  retry

rescue StandardError=> e 
  puts"an unexpected error has occured #{e.message}"
end




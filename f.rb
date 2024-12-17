# Define custom exceptions
class EvenNumberError < StandardError; end
class OddNumberError < StandardError; end

begin
  # Prompt the user for input
  puts "Enter a number: "
  number = gets.chomp.to_i

  # Check if the number is even or odd and raise appropriate exception
  if number.even?
    raise EvenNumberError, "You entered an even number: #{number}"
  else
    raise OddNumberError, "You entered an odd number: #{number}"
  end
rescue EvenNumberError => e
  puts "Caught an exception for even number: #{e.message}"
rescue OddNumberError => e
  puts "Caught an exception for odd number: #{e.message}"
end

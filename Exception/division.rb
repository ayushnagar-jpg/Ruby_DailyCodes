begin
  puts "Enter number 1:"
  num1 =gets.chomp.to_i
  puts "Enter number 2:"
  num2 =gets.chomp.to_i

  division = num1/num2
rescue ZeroDivisionError
  puts "Error: Division by zero is not allowed."

rescue StandardError => e
  puts "Unexpected error: #{e.message}"
end

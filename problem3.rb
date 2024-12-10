loop do
  puts "Enter a number between 1 and 10"
  begin
    number = Integer(gets.chomp)
  rescue ArgumentError
    puts "Invalid input. Please enter a number between 1 and 10"
    redo
  end

  if number < 1 || number > 10
    puts "Invalid number. Please enter a number between 1 and 10"
    redo
  else
    puts "You entered #{number}"
    break
  end
end
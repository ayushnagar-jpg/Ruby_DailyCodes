class InvalidNum < StandardError; end

puts "Enter a number"
num = gets.chomp

def valid_number(num)
  regex = /^\+?[1-9]\d{1,14}$/
  raise InvalidNum, "Invalid number" unless num =~ regex
  puts "Calling..."
end

begin
  valid_number(num)
rescue InvalidNum => e
  puts e.message
end

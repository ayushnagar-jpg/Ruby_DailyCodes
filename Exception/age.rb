class AgeError < StandardError; 
# def initialize(message="Invalid age")
#   super(message)
# end
end

def valid_age
  begin
    puts"Enter Age of user"
    age = gets.chomp.to_i


    raise ArgumentError, "Age must be positive" unless age > 0

   
    unless age >= 18 && age <= 100
      raise AgeError, "Age is not valid. Please enter an age between 18 and 100."
    end

    puts "Age is valid. You entered: #{age}"
  rescue ArgumentError => e
    puts "Error: #{e.message}"
  rescue AgeError => e
    puts "Error: #{e.message}"
end
end

valid_age 


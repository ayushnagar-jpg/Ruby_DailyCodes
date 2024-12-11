#  5Problem Statement: 
#  Write a Ruby method validate_email that takes an email address as input and raises an InvalidEmailError 
#  (custom exception) if the email does not match a standard email format. 
#  Test the method with various inputs and handle the exception in the caller.
 class InvalidEmailchecker < StandardError; end

def validate_email
 begin
 puts"Enter an Email"
 email = gets.chomp
 regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/

 raise InvalidEmailchecker , "Invalid email format" unless email.match?(regex)
 puts"Valid email: #{email}"

 rescue InvalidEmailchecker=> e  
 puts" error occured #{e.message}"
 puts"pls retry"
 retry 
end
end

validate_email
 
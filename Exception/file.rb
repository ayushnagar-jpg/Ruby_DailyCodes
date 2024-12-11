# 6. Problem Statement: Write a Ruby program that opens a file for writing, writes some content,
#  and ensures the file is closed properly even if an exception occurs during the writing process.

# Define the file path
puts"enterfile"

file_path = gets.chomp

begin
  # Open the file for writing
  file = File.open(file_path, "w")
  
  # Write some content to the file
  file.puts "This is the first line of content."
  file.puts "Here's another line of content."
  file.puts "Ruby ensures proper file handling!"

  # Simulate an exception to test file closure
  raise "An error occurred during file writing!" 

rescue => e
  # Handle exceptions if any occur
  puts "An error occurred: #{e.message}"
  
ensure
  # Ensure the file is closed
  if file
    file.close
    puts "File closed properly."
  end
end


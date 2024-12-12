# 6. Problem Statement: Write a Ruby program that opens a file for writing, writes some content,
#  and ensures the file is closed properly even if an exception occurs during the writing process.

puts"enterfile"
file_path = gets.chomp
begin
  file = File.open(file_path, "w")
  
  file.puts "This is the first line of content."
  file.puts "Here's another line of content."
  file.puts "Ruby ensures proper file handling!"

  raise "An error occurred during file writing!" 
  rescue => e
  puts "An error occurred: #{e.message}"
  ensure
  if file
    file.close
    puts "File closed properly."
  end
end


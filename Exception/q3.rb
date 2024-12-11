# 3. Problem Statement: Write a Ruby program that reads a file specified by the user. Use multiple rescue blocks to handle 
#the following scenarios:

# File not found (Errno::ENOENT)
# Permission denied (Errno::EACCES)
# Any other genesric exception

def read_file  
begin
  puts"Enter file name"
  file_name = gets.chomp
file = File.open(file_name, "r")
content = file.read
puts "File content:#{content}"
rescue Errno::ENOENT
  puts"The file #{file_name} is not Found"
rescue Errno::EACCES
  puts"#{file_name} permiossion denied"
rescue StandardError => e  
  puts "unexpected error #{e.message}"
file.close
end
end

read_file

def read_file
  begin
    puts "Enter the file name to read:"
    file_name = gets.chomp
    content = File.read(file_name)
    puts "File content:\n\n#{content}"
    rescue Errno::ENOENT
    puts "Error: The file '#{file_name}' was not found."
    rescue Errno::EACCES
    puts "Error: Permission denied to access the file '#{file_name}'."
    rescue StandardError => e
    puts "An unexpected error occurred: #{e.message}"
  end
end


read_file

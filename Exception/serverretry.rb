
def connect_to_server
  
  if rand < 0.7
    raise RuntimeError, "Connection failed!"
  else
    puts "Successfully connected to the server!"
  end
end

max_retries = 3
attempts = 0

begin

  attempts += 1
  puts "Attempt #{attempts}: Trying to connect to the server..."
  connect_to_server
  
rescue RuntimeError => e
  
  puts "Error: #{e.message}"
  if attempts < max_retries
    puts "Retrying..."
    retry 
  else
    puts "Failed to connect after #{max_retries} attempts. Giving up."
  end
end

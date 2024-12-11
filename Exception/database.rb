class DatabaseError < StandardError; end
class ConnectionError < StandardError; end

def query_database
  raise ConnectionError, "Lost connection to the database!"

rescue ConnectionError => e
  
  raise DatabaseError, "Database query failed!"
end


begin
  puts "Executing database query..."
  query_database
 rescue DatabaseError => e
 
  puts "Error: #{e.message}"
  puts "Root cause: #{e.cause.class} - #{e.cause.message}" if e.cause
end


def fetch_data
  raise "Error: Failed to fetch data from the source!"
end

def process_data
  begin
    puts "Fetching data..."
    fetch_data
  rescue => e
    puts "An error occurred during data processing: #{e.message}"
  end
end


puts "Starting data processing..."
process_data
puts "Program finished."

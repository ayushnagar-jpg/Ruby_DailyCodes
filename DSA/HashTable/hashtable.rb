hash = { "name" => "Alice", "age" => 30, "city" => "New York" }

# Accessing values
puts hash["name"]  # Output: Alice

# Adding a new key-value pair
hash["country"] = "USA"

# Checking if a key exists
puts hash.key?("age")  # Output: true

# Iterating through the hash
hash.each do |key, value|
  puts "#{key}: #{value}"
end
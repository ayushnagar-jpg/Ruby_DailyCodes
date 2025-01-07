def unique_characters?(string)
  seen = Set.new
  string.each_char do |char|
    return false if seen.include?(char)
    seen.add(char)
  end
  true
end

# Example usage:
puts unique_characters?("abcdef") # true
puts unique_characters?("aabbcc") # false

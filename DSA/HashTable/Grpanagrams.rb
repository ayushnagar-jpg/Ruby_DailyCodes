def group_anagrams(strs)
  groups = Hash.new { |hash, key| hash[key] = [] }

  strs.each do |str|
    # Sort the string to use as the key
    key = str.chars.sort.join
    groups[key] << str
  end

  groups.values
end

# Example usage:
input = ["eat", "tea", "tan", "ate", "nat", "bat"]
result = group_anagrams(input)
puts result.inspect

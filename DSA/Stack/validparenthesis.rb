def is_valid_parentheses(s)
  stack = []
  matching_brackets = { ')' => '(', '}' => '{', ']' => '[' }

  s.each_char do |char|
    if matching_brackets.values.include?(char)
      
      stack.push(char)
    elsif matching_brackets.keys.include?(char)
    
      if stack.empty? || stack.pop != matching_brackets[char]
        return false
      end
    end
  end

  
  stack.empty?
end

puts is_valid_parentheses("()")        
puts is_valid_parentheses("()[]{}")    
puts is_valid_parentheses("(]")        
puts is_valid_parentheses("([)]")    
puts is_valid_parentheses("{[]}")      

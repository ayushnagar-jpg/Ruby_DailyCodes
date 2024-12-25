def eval_rpn(tokens)
  stack = []

  tokens.each_with_index do |token, idx|
    if token =~ /^-?\d+$/ # Check if the token is an integer
      stack.push(token.to_i)
      puts "[#{idx}] Pushed #{token.to_i}: #{stack.inspect}" # Debugging
    else
      if stack.size < 2
        raise "Error: Not enough operands in stack for operation '#{token}' at index #{idx}. Current stack: #{stack.inspect}"
      end

      # Pop the top two elements from the stack
      b = stack.pop
      a = stack.pop

      case token
      when '+'
        result = a + b
      when '-'
        result = a - b
      when '*'
        result = a * b
      when '/'
        result = (a.to_f / b).to_i # Ensure integer division truncating towards zero
      else
        raise "Error: Invalid operator '#{token}' at index #{idx}."
      end

      stack.push(result)
      puts "[#{idx}] Applied '#{token}' to #{a} and #{b}: Result = #{result}, Current Stack: #{stack.inspect}" # Debugging
    end
  end

  # Final check: The stack should have exactly one element, which is the result
  if stack.size != 1
    raise "Error: Invalid expression. Final stack: #{stack.inspect}"
  end

  stack.pop
end

# Example usage:
begin
  tokens = ["2", "1", "+", "3", "*"]
  puts "Result: #{eval_rpn(tokens)}" # Output: 9

  tokens = ["4", "13", "5", "/", "+"]
  puts "Result: #{eval_rpn(tokens)}" # Output: 6

  tokens = ["10", "6", "9", "3", "/", "*", "-", "+"]
  puts "Result: #{eval_rpn(tokens)}" # Output: 13

  # Invalid test case
  tokens = ["3", "+"]
  puts "Result: #{eval_rpn(tokens)}"
rescue StandardError => e
  puts e.message
end

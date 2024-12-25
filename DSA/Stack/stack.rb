class Stack
  def initialize
    @stack = []
  end

  def push(element)
    @stack << element
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def empty?
    @stack.empty?
  end
end


stack = Stack.new
stack.push(1)
stack.push(2)
stack.push(3)

puts stack.pop  # Output: 3
puts stack.peek # Output: 2
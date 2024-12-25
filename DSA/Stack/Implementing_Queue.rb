class MyQueue
  def initialize
    @stack_in = []
    @stack_out = []
  end

  def push(x)
    @stack_in.push(x)
  end

  def pop
    move_elements if @stack_out.empty?
    @stack_out.pop
  end

  def peek
    move_elements if @stack_out.empty?
    @stack_out.last
  end

  def empty
    @stack_in.empty? && @stack_out.empty?
  end

  private

  def move_elements
    while !@stack_in.empty?
      @stack_out.push(@stack_in.pop)
    end
  end
end


queue = MyQueue.new
queue.push(1)
queue.push(2)
puts queue.peek      
puts queue.pop       
puts queue.empty     

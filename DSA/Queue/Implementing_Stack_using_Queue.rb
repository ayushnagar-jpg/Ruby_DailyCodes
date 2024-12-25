class MyStack
  def initialize
    @queue1 = []
    @queue2 = []
  end

  def push(x)
    @queue1.push(x)
  end

  def pop
    while @queue1.length > 1
      @queue2.push(@queue1.shift)
    end
    popped = @queue1.shift
    swap_queues
    popped
  end

  def top
    return @queue1.last if !@queue1.empty?
  end

  def empty
    @queue1.empty?
  end

  private

  def swap_queues
    @queue1, @queue2 = @queue2, @queue1
  end
end


stack = MyStack.new
stack.push(1)
stack.push(2)
puts stack.top      
puts stack.pop      
puts stack.empty    

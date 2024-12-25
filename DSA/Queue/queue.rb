class Queue
  def initialize
    @queue = []
  end

  def enqueue(element)
    @queue << element
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue.first
  end

  def empty?
    @queue.empty?
  end
end

# Usage
queue = Queue.new
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)

puts queue.dequeue  # Output: 1
puts queue.peek   # Output: 2
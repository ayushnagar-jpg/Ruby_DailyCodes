class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end


class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

 
  def insert_at_head(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node
  end

 
  def insert_at_tail(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next_node while current.next_node
      current.next_node = new_node
    end
  end

 
  def display
    current = @head
    while current
      print "#{current.value} -> "
      current = current.next_node
    end
    puts "nil"
  end

  
  



list = LinkedList.new
list.insert_at_head(10)
list.insert_at_tail(20)
list.insert_at_head(5)
list.display 





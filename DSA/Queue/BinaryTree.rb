# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

class Solution
  def level_order(root)
    return [] if root.nil?
    
    result = []
    queue = [root]
    
    while !queue.empty?
      level_values = []
      level_size = queue.length
      level_size.times do
        node = queue.shift
        level_values.push(node.val)
        queue.push(node.left) if node.left
        queue.push(node.right) if node.right
      end
      result.push(level_values)
    end
    
    result
  end
end


root = TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20)
root.right.left = TreeNode.new(15)
root.right.right = TreeNode.new(7)

solution = Solution.new
puts solution.level_order(root).inspect 

def next_greater_element(nums1, nums2)
  # Create a hash map to store the next greater element for each number in nums2
  next_greater_map = {}
  stack = []

  # Traverse nums2
  nums2.each do |num|
    while !stack.empty? && stack[-1] < num
      next_greater_map[stack.pop] = num
    end
    stack.push(num)
  end

  # Remaining elements in the stack have no next greater element
  stack.each { |num| next_greater_map[num] = -1 }

  # Construct the result for nums1
  nums1.map { |num| next_greater_map[num] }
end

# Example usage:
nums1 = [4, 1, 2]
nums2 = [1, 3, 4, 2]
puts next_greater_element(nums1, nums2).inspect
# Output: [-1, 3, -1]

nums1 = [2, 4]
nums2 = [1, 2, 3, 4]
puts next_greater_element(nums1, nums2).inspect
# Output: [3, -1]

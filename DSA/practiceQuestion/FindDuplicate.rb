def find_duplicate(nums)
  slow = nums[0]
  fast = nums[0]

  begin
    slow = nums[slow]
    fast = nums[nums[fast]]
  end while slow != fast

  fast = nums[0]
  while slow != fast
    slow = nums[slow]
    fast = nums[fast]
  end

  slow
end


p find_duplicate([3, 1, 3, 4, 2]) 

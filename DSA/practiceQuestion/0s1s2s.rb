def sort_colors(nums)
  low = 0
  mid = 0
  high = nums.length - 1

  while mid <= high
    if nums[mid] == 0
      nums[low], nums[mid] = nums[mid], nums[low]
      low += 1
      mid += 1
    elsif nums[mid] == 1
      mid += 1
    else
      nums[mid], nums[high] = nums[high], nums[mid]
      high -= 1
    end
  end

  nums
end


p sort_colors([2, 0, 2, 1, 1, 0])  

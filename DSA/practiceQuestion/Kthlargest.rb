def find_kth_largest(nums, k)
  quick_select(nums, 0, nums.length - 1, nums.length - k)
end

def quick_select(nums, left, right, k)
  pivot = partition(nums, left, right)
  if pivot == k
    nums[pivot]
  elsif pivot < k
    quick_select(nums, pivot + 1, right, k)
  else
    quick_select(nums, left, pivot - 1, k)
  end
end

def partition(nums, left, right)
  pivot = nums[right]
  p_index = left

  (left...right).each do |i|
    if nums[i] <= pivot
      nums[i], nums[p_index] = nums[p_index], nums[i]
      p_index += 1
    end
  end

  nums[p_index], nums[right] = nums[right], nums[p_index]
  p_index
end


p find_kth_largest([3, 2, 1, 5, 6, 4], 2) 

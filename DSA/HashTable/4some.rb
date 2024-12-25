def four_sum(nums, target)
  nums.sort! 
  quadruplets = []

  (0...nums.length - 3).each do |i|
    
    next if i > 0 && nums[i] == nums[i - 1]

    (i + 1...nums.length - 2).each do |j|
      
      next if j > i + 1 && nums[j] == nums[j - 1]

      left = j + 1
      right = nums.length - 1

      while left < right
        sum = nums[i] + nums[j] + nums[left] + nums[right]

        if sum == target
          quadruplets << [nums[i], nums[j], nums[left], nums[right]]

          
          left += 1 while left < right && nums[left] == nums[left - 1]
          right -= 1 while left < right && nums[right] == nums[right + 1]

          left += 1
          right -= 1
        elsif sum < target
          left += 1
        else
          right -= 1
        end
      end
    end
  end

  quadruplets
end


nums = [1, 0, -1, 0, -2, 2]
target = 0
result = four_sum(nums, target)
puts result.inspect

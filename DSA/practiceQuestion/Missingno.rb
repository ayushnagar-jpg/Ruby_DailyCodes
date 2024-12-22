def missing_number(nums)
  n = nums.length
  xor = 0

  (0..n).each { |i| xor ^= i }
  nums.each { |num| xor ^= num }

  xor
end


p missing_number([3, 0, 1])

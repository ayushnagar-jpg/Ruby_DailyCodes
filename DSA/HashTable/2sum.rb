def twoSum(nums,target)
    hash = {}
    nums.each_with_index do |num, i|
      diff = target - num
      return [hash[diff] , i] if hash.key?(diff)
      hash[num] = i
      puts hash
            
    end
end
arr = [1,2,3,4,5]
puts twoSum(arr,7).inspect


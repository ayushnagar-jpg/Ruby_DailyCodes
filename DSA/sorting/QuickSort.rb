def quick_sort(arr)
  return arr if arr.length <= 1 
  
  result = arr[arr.length / 2]

 
  left = arr.select { |x| x < result }
  middle = arr.select { |x| x == result }
  right = arr.select { |x| x > result }

  quick_sort(left) + middle + quick_sort(right)
end

arr = [64, 34, 25, 12, 22, 11, 90]
puts "Original Array: #{arr}"
sorted_array = quick_sort(arr)
puts "Sorted Array: #{sorted_array}"

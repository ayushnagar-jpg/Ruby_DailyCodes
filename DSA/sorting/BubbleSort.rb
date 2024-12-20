def bubble_sort(arr)
  n = arr.length
  (n - 1).times do |pass| 
    (0...n - 1 - pass).each do |i|
      if arr[i] > arr[i + 1] 
        arr[i], arr[i + 1] = arr[i + 1], arr[i] 
      end
    end
  end
  arr
end


arr = [64, 34, 25, 12, 22, 11, 90]
puts "Original Array: #{arr}"
sorted_array = bubble_sort(arr)
puts "Sorted Array: #{sorted_array}"

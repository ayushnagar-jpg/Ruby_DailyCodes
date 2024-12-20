def insertion_sort(arr)
  (1...arr.length).each do |i|
    key = arr[i]               
    j = i - 1                 
    
    
    while j >= 0 && arr[j] > key
      arr[j + 1] = arr[j]
      j -= 1
    end
    arr[j + 1] = key  
  end
  arr
end


arr = [64, 34, 25, 12, 22, 11, 90]
puts "Original Array: #{arr}"
sorted_array = insertion_sort(arr)
puts "Sorted Array: #{sorted_array}"

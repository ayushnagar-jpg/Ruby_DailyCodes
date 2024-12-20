def merge_sort(arr)
  return arr if arr.length <= 1 

  mid = arr.length / 2
  left = arr[0...mid]
  right = arr[mid...arr.length]

  
  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  sorted = []
  while left.any? && right.any?
    if left.first < right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  
  sorted + left + right
end


arr = [64, 34, 25, 12, 22, 11, 90]
puts "Original Array: #{arr}"
sorted_array = merge_sort(arr)
puts "Sorted Array: #{sorted_array}"

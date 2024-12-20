class Sorting
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

  def selection_sort(arr)
    n = arr.length
    (0...n - 1).each do |i|
      min_index = i
      (i + 1...n).each do |j|
        min_index = j if arr[j] < arr[min_index]
      end
      arr[i], arr[min_index] = arr[min_index], arr[i] # Swap
    end
    arr
  end

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

  def quick_sort(arr)
    return arr if arr.length <= 1
  
    pivot = arr.delete_at(arr.length / 2)
    left, right = arr.partition { |el| el < pivot }
  
    quick_sort(left) + [pivot] + quick_sort(right)
  end
end

\
sorting = Sorting.new
arr = [64, 34, 25, 12, 22, 11, 90]

puts "Original Array: #{arr}"
puts "Bubble Sort: #{sorting.bubble_sort(arr.clone)}"
puts "Selection Sort: #{sorting.selection_sort(arr.clone)}"
puts "Insertion Sort: #{sorting.insertion_sort(arr.clone)}"
puts "Quick Sort: #{sorting.quick_sort(arr.clone)}"

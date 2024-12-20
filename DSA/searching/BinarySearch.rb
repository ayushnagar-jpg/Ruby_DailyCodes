class Searching
  def binary_search(arr, target)
    low = 0
    high = arr.length - 1

    while low <= high
      mid = low + (high - low) / 2 # More efficient way to find mid to avoid overflow

      if arr[mid] == target
        return mid
      elsif arr[mid] < target
        low = mid + 1
      else
        high = mid - 1
      end
    end

    -1 # Return -1 if target is not found
  end
end

search = Searching.new
arr = [10, 20, 30, 40, 50]
target = 40
puts search.binary_search(arr, target)

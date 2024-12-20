class Searching
  def linear_search(arr, target)
    arr.each_with_index do |element, index|
      return index if element == target
    end
    -1 
  end

  def binary_search(arr, target)
        low =0
        high = arr.length-1

        while low<= high
                    mid = (low+high)/2
                  if arr[mid] == target   
                    return mid
                  elsif arr[mid] < target
                    low = mid + 1
                  else
                     high = mid - 1 
                                        
                  end  
        end
        -1
  end
end

search = Searching.new
arr = [10, 20, 30, 40, 50]
target = 40
puts search.linear_search(arr, target)
puts search.binary_search(arr, target)
puts arr.find_index(30)


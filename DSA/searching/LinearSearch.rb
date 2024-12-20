class Searching
  def linear_search(arr, target)
    arr.each_with_index do |element, index|
      return index if element == target
    end
    -1 
  end

 
end

search = Searching.new
arr = [10, 20, 30, 40, 50]
target = 40
puts search.linear_search(arr, target)


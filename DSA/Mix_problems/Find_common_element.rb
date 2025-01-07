def common_elements(arr1, arr2)
  set1 = arr1.to_set
  common = []
  arr2.each do |element|
    common << element if set1.include?(element)
  end
  common
end

# Example usage:
puts common_elements([1, 2, 3], [3, 4, 5]).inspect # [3]

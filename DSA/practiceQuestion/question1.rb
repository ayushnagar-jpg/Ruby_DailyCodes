def first_occurance(arr,target)
  first = -1
  low = 0
  high = arr.length-1

  while low<=high
    mid = (low+high)/2
    if arr[mid] == target
      first = mid
      high = mid-1
    elsif arr[mid] > target
      high = mid-1
    else low = mid+1
    end
  end
  return first
end
def last_occurance(arr,target)
  first = -1
  low = 0
  high = arr.length-1

  while low<=high
    mid = (low+high)/2
    if arr[mid] == target
      last = mid
      low = mid+1
    elsif arr[mid] > target
      high = mid-1
    else low = mid+1
    end
  end
  return last
end

arr = [1,2,3,7,7,7,7,8]
puts "Enter target:"
target = gets.chomp.to_i
starting= first_occurance(arr,target)
ending  = last_occurance(arr,target)

result = [starting,ending]
puts result.inspect

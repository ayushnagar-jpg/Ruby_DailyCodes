def get_skyline(buildings)
  events = []
  buildings.each do |left, right, height|
    events << [left, height, 'start']
    events << [right, height, 'end']
  end

  events.sort! do |a, b|
    if a[0] == b[0]
      a[2] == 'start' ? -1 : 1
    else
      a[0] <=> b[0]
    end
  end

  heights = [0]
  result = []

  events.each do |x, height, type|
    if type == 'start'
      heights.push(height)
    else
      heights.delete(height)
    end

    current_max_height = heights.max
    if result.empty? || result[-1][1] != current_max_height
      result << [x, current_max_height]
    end
  end

  result
end

buildings = [[2, 9, 10], [3, 7, 15], [5, 12, 12], [15, 20, 10], [19, 24, 8]]
puts get_skyline(buildings).inspect

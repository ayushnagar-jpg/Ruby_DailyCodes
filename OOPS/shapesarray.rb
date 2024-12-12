class Shape
  def area
    raise NotImplementedError, "You must implement the area method in a subclass"
  end
end


class Square < Shape
  def initialize(side_length)
    @side_length = side_length
  end

  def area
    @side_length**2
  end
end


class Triangle < Shape
  def initialize(base, height)
    @base = base
    @height = height
  end

  def area
    0.5 * @base * @height
  end
end

def calculate_areas(shapes)
  shapes.each do |shape|
    puts "The area of the #{shape.class} is: #{shape.area}"
  end
end


shapes = [
  Square.new(4),    
  Triangle.new(6, 3)
]


calculate_areas(shapes)

class Shape
  def area 
    begin
    raise NotImplementedError, "Subclass must implement area method."
    rescue NotImplementedError =>e  
      puts e.message 
    end
  end
end

class Circle < Shape
  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * @radius**2
  end
end

class Rectangle < Shape
  def initialize(height,width)
    @height = height
    @width = width
  end

  def area
    @width*@height
  end
end

rectangle = Rectangle.new(10,4)
puts "Rectangle Area: #{rectangle.area}" 

circle = Circle.new(4)
puts "Circle Area: #{circle.area.round}"

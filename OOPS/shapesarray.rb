# Shape Area Calculation Using Polymorphism
# Given the following classes:
# A base class Shape with an abstract method area.
# Two subclasses: Square (with side length) and Triangle (with base and height).
# Both subclasses implement the area method to calculate the respective areas.
# Create an array of different shapes (e.g., squares and triangles) and use polymorphism to calculate and display the area of each shape without knowing its exact type.

class Shape
  def area
    raise NotImplementedError, "Subclasses must implement the area method"
  end
end


class Square < Shape
  def initialize(side_length)
    @side_length = side_length
  end

  def area
    @side_length * @side_length
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

shapes = [
  Square.new(4),       
  Triangle.new(6, 3),   
  Square.new(5),        
  Triangle.new(10, 8)   
]
shapes.each do |shape|
  puts "The area of the #{shape.class.name} is: #{shape.area}"
end
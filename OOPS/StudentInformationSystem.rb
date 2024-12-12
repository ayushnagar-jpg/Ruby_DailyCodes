class Student
  attr_accessor :name, :age
  attr_reader :grades

  def initialize(name, age)
    @name = name
    @age = age
    @grades = [] 
  end

  def add_grade(grade)
    if grade.between?(0, 100)
      @grades << grade
      "Grade #{grade} added successfully."
    else
      "Invalid grade. Please enter a grade between 0 and 100."
    end
  end

  def calculate_average
    return 0 if @grades.empty?
    @grades.sum / @grades.size.to_f
  end
end

student = Student.new("Abhinav", 21)
puts student.add_grade(90)  
puts student.add_grade(75)  
puts student.add_grade(110)

puts "Name: #{student.name}, Age: #{student.age}"
puts "Grades: #{student.grades}"
puts "Average Grade: #{student.calculate_average}"

student = Student.new("Ayush", 21)
puts student.add_grade(90)  
puts student.add_grade(89)  
puts student.add_grade(79)


puts "Name: #{student.name},Age: #{student.age}"
puts "Grades: #{student.grades}"
puts "Average Grade: #{student.calculate_average}"
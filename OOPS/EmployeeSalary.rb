class Employee
  def initialize(name,salary)
    @name = name
    @salary = salary
  end
  def display_details
   "Name:#{@name}.Salary:#{@salary}"
  end
end

class Manager < Employee
  def bonus(amount)
    @salary += amount
  end
end

class Developer < Employee
  def increase_salary(percentage)
    @salary += @salary * (percentage.to_f / 100)
  end
end

manager = Manager.new("Ayush",400)
puts manager.display_details

manager.bonus(50)
puts manager.display_details

developer = Developer.new("Abhinav",500)
puts developer.display_details

developer.increase_salary(30)
puts developer.display_details


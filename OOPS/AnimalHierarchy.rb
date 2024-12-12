class Animal
  def make_sound
    raise NotImplementedError, "Subclasses must implement the `make_sound` method."
  end

  def describe_animal
    "#{self.class.name} says '#{make_sound}'"
  end
end

class Dog < Animal
  def make_sound
    "Woof"
  end
end

class Cat < Animal
   def make_sound
    "Meow"
  end
end

dog = Dog.new
puts dog.describe_animal

cat = Cat.new
puts cat.describe_animal


class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def display
    p "Name: #{@name}"
    p "Age: #{@age}"
  end
end

class Student < Person
  def initialize(name, age, section)
    super(name, age)
    @section = section
  end
  def display
    p "Name: #{@name}"
    p "Age: #{@age}"
    p "Section: #{@section}"
  end
end

p = Person.new("Tomas Wild", 37)
p.display
student = Student.new("Albert", 23, "Mathematics")
student.display

# Output:
# "Name: Tomas Wild"
# "Age: 37"
#
# "Name: Albert"
# "Age: 23"
# "Section: Mathematics"
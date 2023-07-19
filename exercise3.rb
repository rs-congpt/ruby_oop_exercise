class Geometry
  attr_accessor :x, :y
  def initialize(x = 0, y = 0)
    @x = x
    @y = y
  end

  def display
    p "(#{@x}, #{@y})"
  end

  def distance(other_geometry)
    begin
      Math.sqrt((@x - other_geometry.x) ** 2 + (@y - other_geometry.y) ** 2).round(2)
    rescue NoMethodError
      p "You must enter correct arguments"
    end
  end

  def middle(other_geometry)
    begin
      x = (@x + other_geometry.x) / 2
      y = (@y + other_geometry.y) / 2
      Geometry.new(x, y)
    rescue NoMethodError
      p "You must enter correct arguments"
    end
  end
end

class Triangle 
  attr_accessor :point_A, :point_B, :point_C
  def initialize(point_A = Geometry.new(0, 0), point_B = Geometry.new(0, 0), point_C = Geometry.new(0, 0))
    @point_A = point_A
    @point_B = point_B
    @point_C = point_C
  end

  def triangle_perimeter
    (@point_A.distance(@point_B) + @point_A.distance(@point_C) + @point_B.distance(@point_C)).round(2)
  end

  def self.triangle_isoscel?(point_A, point_B, point_C)
    begin
      return true if point_A.distance(point_B) == point_A.distance(point_C) || point_A.distance(point_B) == point_B.distance(point_C)
      return true if point_A.distance(point_C) == point_B.distance(point_C)
      false
    rescue NoMethodError
      p "You must enter correct arguments"
    end
  end
end

a = Geometry.new(10, 10)
b = Geometry.new(10, 50)
c = Geometry.new(30, 30)
triangle = Triangle.new(a, b, c)
a.distance(1)
b.middle(a).display
p "Perimeter of triangle is: #{triangle.triangle_perimeter}"
p "Triangle is isoscel: #{Triangle.triangle_isoscel?(triangle.point_A, triangle.point_B, triangle.point_C)}"

# Output
# "You must enter correct arguments"
# "(10, 30)"
# "Perimeter of triangle is: 96.56"
# "Triangle is isoscel: true"
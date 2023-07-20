class Geometry
  attr_accessor :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end

  def display
    p "(#{@x}, #{@y})"
  end

  def distance(other_geometry)
      Math.sqrt((@x - other_geometry.x) ** 2 + (@y - other_geometry.y) ** 2).round(2)
  end

  def middle(other_geometry)
      Geometry.new((@x + other_geometry.x) / 2, (@y + other_geometry.y) / 2)
  end
end

class Triangle
  def initialize(point_A, point_B, point_C)
    @point_A = point_A
    @point_B = point_B
    @point_C = point_C
  end

  def triangle_perimeter
    (@point_A.distance(@point_B) + @point_A.distance(@point_C) + @point_B.distance(@point_C)).round(2)
  end

  def triangle_isoscel?
    @point_A.distance(@point_B) == @point_A.distance(@point_C) || @point_A.distance(@point_B) == @point_B.distance(@point_C) || @point_A.distance(@point_C) == @point_B.distance(@point_C)
  end
end

a = Geometry.new(10, 10)
b = Geometry.new(10, 50)
c = Geometry.new(30, 30)
triangle = Triangle.new(a, b, c)
b.middle(a).display
p "Perimeter of triangle is: #{triangle.triangle_perimeter}"
p "Triangle is isoscel: #{triangle.triangle_isoscel?}"

# Output
# "You must enter correct arguments"
# "(10, 30)"
# "Perimeter of triangle is: 96.56"
# "Triangle is isoscel: true"
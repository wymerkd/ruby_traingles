class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def triangle_check(side1, side2, side3)
    if side1 == side2 && side2 == side3 # equilateral
      "Equilateral"
    elsif side1 == side2 || side2 == side3 || side3 == side1 # isosceles
      "Isosceles"
    elsif side1 != side2 || side2 != side3 || side3 != side1 # not a triangle
  end
end
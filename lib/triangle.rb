class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def equilateral_tri
    if side1 == side2 && side2 == side3
      "Equilateral"
    end
  end

  def isosceles_tri
    if side1 == side2 || side2 == side3 || side3 == side1
      "Isosceles"
    end
  end

  def scalene_tri
    if side1 != side2 || side2 != side3 || side3 != side1
      "Scalene"
    end
  end

  def impossible
    if side1 + side2 <= side3 || side2 + side3 <= side1 || side3 + side1 <= side2
      "Not a triangle"
    end
  end
end

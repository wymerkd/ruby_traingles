class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def triangle_checker()
    if self.impossible
      "Not a triangle"
    elsif self.equilateral_tri
      "Equilateral"
    elsif self.isosceles_tri
      "Isosceles"
    else
      "Scalene"
    end
  end

  def impossible # ? bool
    @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side3 + @side1 <= @side2
  end

  def equilateral_tri
    @side1 == @side2 && @side2 == @side3
  end

  def isosceles_tri
    @side1 == @side2 || @side2 == @side3 || @side3 == @side1
  end

  def scalene_tri
    @side1 != @side2 || @side2 != @side3 || @side3 != @side1
  end
end

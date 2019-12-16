require "rspec"
require "triangle"

describe('#equilateral_tri') do
  it('determines whether 3 sides make an equilateral triangle') do
    equil = Triangle.new(3,3,3)
    expect(equil.equilateral_tri()).to(eq("Equilateral"))
  end
end

describe('#isosceles_tri') do
  it('determines whether 3 sides make an isosceles triangle') do
    iso = Triangle.new(3,3,4)
    expect(iso.isosceles_tri()).to(eq("Isosceles"))
  end
end

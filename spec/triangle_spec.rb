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

describe('#scalene_tri') do
  it('determines whether 3 sides make a scalene triangle') do
    scal = Triangle.new(3,4,2)
    expect(scal.scalene_tri()).to(eq('Scalene'))
  end
end

describe('#not_tri') do
  it('determines whether 3 sides do not make a triangle') do
    not_tri = Triangle.new(1,1,3)
    expect(not_tri.impossible()).to(eq('Not a triangle'))
  end
end

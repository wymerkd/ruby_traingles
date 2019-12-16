require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require 'pry'
also_reload('lib/**/*.rb')

get('/triangle_input') do
  erb(:triangle_input)
end

post('/triangle_output') do
  side1 = params[:side1]
  side2 = params[:side2]
  side3 = params[:side3]

  @user_triangle = Triangle.new(side1, side2, side3)
  @output_triangle = @user_triangle.equilateral_tri()
  # puts user_triangle.equilateral_tri()
  # puts user_triangle.isosceles_tri()
  # puts user_triangle.scalene_tri()
  # puts user_triangle.impossible()
  erb(:triangle_output)
end

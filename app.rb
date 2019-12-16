require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require 'pry'
also_reload('lib/**/*.rb')

get('/triangle_input') do
  erb(:triangle_input)
end

post('/triangle_output') do
  side1 = params[:side1].to_i
  side2 = params[:side2].to_i
  side3 = params[:side3].to_i

  @user_triangle = Triangle.new(side1, side2, side3)
  @output_triangle = @user_triangle.triangle_checker()
  erb(:triangle_output)
end

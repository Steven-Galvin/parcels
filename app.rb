require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require('./lib/task')

get("/") do
  @parcels = Parcel
  erb(:index)
end

post("/confirmation") do
  length = params.fetch("length").to_i
  width = params.fetch("width").to_i
  height = params.fetch("height").to_i
  weight = params.fetch("weight").to_i
  parcel = Parcel.new(length, width, height, weight)

  erb(:confirmation)
end

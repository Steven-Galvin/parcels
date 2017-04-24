require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require('./lib/parcels')

get("/") do
  @parcels = Parcel.all()
  erb(:index)
end

post("/confirmation") do
  length = params.fetch("length").to_f
  width = params.fetch("width").to_f
  height = params.fetch("height").to_f
  weight = params.fetch("weight").to_f
  parcel = Parcel.new(length, width, height, weight)
  parcel.save_parcel()
  erb(:confirmation)
end

get("/total") do
  @total = Parcel.sum()
  erb(:total)
end

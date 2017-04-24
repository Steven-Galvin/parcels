class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  define_method(:volume) do
    (@length * @width * @height)
  end

  def cost_to_ship 
    volume() * @weight * 0.02
  end
end

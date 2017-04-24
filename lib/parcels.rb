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

  def description
    "Dimensions: " + @length.to_s + 'in x ' + @width.to_s + 'in x ' + @height.to_s + 'in, Weight: ' +
    @weight.to_s + "lbs, Cost to Ship: $" + cost_to_ship.to_s
  end
end

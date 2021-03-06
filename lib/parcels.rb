class Parcel
  @@all_parcels = []
  @@total_array = []

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
    cost = volume() * @weight * 0.02
    @@total_array.push(cost)
    cost
  end

  def description
    "Dimensions: " + @length.to_s + 'in x ' + @width.to_s + 'in x ' + @height.to_s + 'in, Weight: ' +
    @weight.to_s + "lbs, Cost to Ship: $" + ("%.2f" % cost_to_ship).to_s
  end

  define_singleton_method(:all) do
    @@all_parcels
  end

  def save_parcel
    @@all_parcels.push(self)
  end

  define_singleton_method(:clear) do
    @@all_parcels = []
  end

  define_singleton_method(:sum) do
    n = @@total_array.length() - @@all_parcels.length()
    @@total_array = @@total_array.drop(n)
    sum = 0
    @@total_array.each() do |total|
      sum += total
    end
    sum
  end
end

require('rspec')
require('parcels')

describe('Parcel#volume') do
  it('takes the length, width, and height and finds the volume') do
    test_parcel = Parcel.new(4, 5, 2, 12)
    expect(test_parcel.volume()).to(eq(40))
  end

  it('takes the volume and the weight and calculates the price to ship') do
    test_parcel = Parcel.new(4, 5, 2, 12)
    expect(test_parcel.cost_to_ship()).to(eq(9.60))
  end
end

require('rspec')
require('parcels')

describe('Parcel#volume') do
  it('takes the length, width, and height and finds the volume') do
    test_parcel = Parcel.new(4, 5, 2, 12)
    expect(test_parcel.volume()).to(eq(40))
  end
end

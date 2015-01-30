require("spec_helper")

describe(Band) do

  it { should have_and_belong_to_many(:venues) }

  it('should only accept unique band names') do
    band1 = Band.new({:name => "thrice"})
    band1.save()
    band2 = Band.new({:name => "thrice"})
    expect(band2.save()).to(eq(false))
  end

  it('capitalizes the band name') do
    band = Band.create({:name => "the cranberries"})
    expect(band.name()).to(eq("The Cranberries"))
  end
end

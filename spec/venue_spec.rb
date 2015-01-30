require("spec_helper")

describe(Venue) do

  it {should have_and_belong_to_many(:bands) }

  it('should only accept unique venue names') do
    venue1 = Venue.new({:name => "the paris theatre"})
    venue1.save()
    venue2 = Venue.new({:name => "the paris theatre"})
    expect(venue2.save()).to(eq(false))
  end

  it('capitalizes the venue name') do
    venue = Venue.create({:name => "the roseland"})
    expect(venue.name()).to(eq("The Roseland"))
  end
end

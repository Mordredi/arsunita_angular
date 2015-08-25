require 'rails_helper'

RSpec.describe Venue, type: :model do
  it "should concat the city address" do
    venue = create(:venue)
    expect(venue.full_address).to eq "125 Bathurst St, Toronto, Ontario, Canada"
  end

  it "should have a value for latitude" do
    venue = create(:venue)
    expect(venue.latitude).to eq 43.6455699
  end

  it "should have a value for longitude" do
    venue = create(:venue)
    expect(venue.longitude).to eq -79.4027373
  end

end

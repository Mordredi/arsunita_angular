require 'rails_helper'

RSpec.describe Venue, type: :model do
  it "should concat the city address" do
    venue = create(:venue)
    expect(venue.full_address).to eq "125 Bathurst St, Toronto, Ontario, Canada"
  end
end

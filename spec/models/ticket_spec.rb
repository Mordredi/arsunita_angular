require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it "Gives the proper price for discounted ticket" do
    user = create(:user, arts_worker: true)
    venue = create(:venue)
    subscription = user.subscriptions.create
    event = create(:event, venue_id: venue.id)
    show = event.shows.create

    ticket = subscription.tickets.create(show_id: show.id, num_of_general: 1)
    expect(ticket.ticket_price_in_cents).to eq 900
  end
end

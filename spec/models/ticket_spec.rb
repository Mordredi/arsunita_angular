require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it "Gives the proper price for discounted ticket" do
    user = create(:user, arts_worker: true)
    subscription = user.subscriptions.create
    event = create(:event)
    show = event.shows.create

    ticket = subscription.tickets.create(show_id: show.id)
    expect(ticket.ticket_price_in_cents).to eq 900
  end
end

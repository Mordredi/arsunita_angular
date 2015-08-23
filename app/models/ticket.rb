class Ticket < ActiveRecord::Base
  belongs_to :show
  belongs_to :subscription

  has_one :event, :through => :show

  before_create :calculate_ticket_price, :check_capacity

  def calculate_ticket_price
    full_price = event.price_in_cents
    discount = full_price * (subscription.discount.to_f / 100)
    self.ticket_price_in_cents = (full_price - discount) * 1.13
  end

  def check_capacity
    show.availability?(num_of_general)
  end

end

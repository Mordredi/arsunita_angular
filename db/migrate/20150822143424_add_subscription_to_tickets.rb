class AddSubscriptionToTickets < ActiveRecord::Migration
  def change
    add_reference :tickets, :subscription, index: true, foreign_key: true
  end
end

class AddTicketPriceToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :ticket_price_in_cents, :integer
  end
end

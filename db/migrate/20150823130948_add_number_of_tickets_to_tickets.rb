class AddNumberOfTicketsToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :num_of_general, :integer
  end
end

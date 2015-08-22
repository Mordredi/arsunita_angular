class AddPriceToEvent < ActiveRecord::Migration
  def change
    add_column :events, :price_in_cents, :integer
  end
end

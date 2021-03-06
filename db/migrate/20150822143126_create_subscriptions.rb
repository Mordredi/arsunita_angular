class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.integer :year
      t.integer :discount, default: 0

      t.timestamps null: false
    end
  end
end

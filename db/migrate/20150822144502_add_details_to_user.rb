class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :arts_worke, :boolean
    add_column :users, :student, :boolean
    add_column :users, :birth_year, :integer
  end
end

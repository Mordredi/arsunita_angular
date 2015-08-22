class RemoveBirthYearFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :birth_year
  end
end

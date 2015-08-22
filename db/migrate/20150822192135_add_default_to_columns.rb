class AddDefaultToColumns < ActiveRecord::Migration
  def change
    change_column_default :users, :arts_worker, false
    change_column_default :users, :student, false
  end
end

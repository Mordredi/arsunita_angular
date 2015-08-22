class ChangeArtsWorkeToArtsWorkerInUser < ActiveRecord::Migration
  def change
    rename_column :users, :arts_worke, :arts_worker
  end
end

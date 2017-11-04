class AddLastSyncedAtToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :last_synced_at, :datetime
  end
end

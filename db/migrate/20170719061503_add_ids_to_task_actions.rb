class AddIdsToTaskActions < ActiveRecord::Migration[5.0]
  def change
    add_column :task_actions, :task_id, :integer
    add_column :task_actions, :user_id, :integer
  end
end

class AddActionToTaskActions < ActiveRecord::Migration[5.0]
  def change
    add_column :task_actions, :action, :string, null: false, default: ""
  end
end

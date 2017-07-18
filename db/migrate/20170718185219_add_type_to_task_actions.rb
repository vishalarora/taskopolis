class AddTypeToTaskActions < ActiveRecord::Migration[5.0]
  def change
    add_column :task_actions, :type_of, :integer
  end
end

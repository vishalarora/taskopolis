class AddPointValueToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :point_value, :integer
  end
end

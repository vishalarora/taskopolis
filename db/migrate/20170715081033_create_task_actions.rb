class CreateTaskActions < ActiveRecord::Migration[5.0]
  def change
    create_table :task_actions do |t|

      t.timestamps
    end
  end
end

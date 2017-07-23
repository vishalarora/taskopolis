class CreateTaskActions < ActiveRecord::Migration[5.0]
  def change
    create_table :task_actions do |t|
      t.belongs_to :task, index: true
      t.belongs_to :user, index: true
      t.string     :action, default: "", null: false

      t.timestamps
    end
  end
end

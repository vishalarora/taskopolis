class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.datetime :due_date
      t.boolean :complete, default: 0

      t.timestamps
    end
  end
end

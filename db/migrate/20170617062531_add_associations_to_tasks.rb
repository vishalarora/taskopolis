class AddAssociationsToTasks < ActiveRecord::Migration[5.0]
  def change
    add_reference :tasks, :user, foreign_key: true
    add_reference :tasks, :list, foreign_key: true
  end
end

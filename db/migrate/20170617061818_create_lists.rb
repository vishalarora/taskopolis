class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :name
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end

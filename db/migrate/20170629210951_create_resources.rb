class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string :name,   null: false, default: ""
      t.integer :value, null: false, default: 1

      t.timestamps
    end
  end
end

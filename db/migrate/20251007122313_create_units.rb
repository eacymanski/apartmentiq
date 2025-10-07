class CreateUnits < ActiveRecord::Migration[8.0]
  def change
    create_table :units do |t|
      t.string :name, null: false, index: { unique: true }
      t.integer :bedroom_count, null: false
      t.decimal :bathroom_count, null: false
      t.integer :unit_size, null: false
      t.belongs_to :property, foreign_key: true
      t.timestamps
    end
  end
end

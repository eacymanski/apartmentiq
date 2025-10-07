class CreateProperties < ActiveRecord::Migration[8.0]
  def change
    create_table :properties do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :address, null: false, index: { unique: true }
      t.integer :year_built, null: false
      t.string :website_url, null: false, index: { unique: true }
      t.timestamps
    end
  end
end

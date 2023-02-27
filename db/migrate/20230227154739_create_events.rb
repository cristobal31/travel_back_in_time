class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :year
      t.string :category
      t.string :location
      t.integer :price, null: false
      t.string :keyword
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

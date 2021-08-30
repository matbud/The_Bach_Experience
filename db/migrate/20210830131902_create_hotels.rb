class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :price_per_night

      t.timestamps
    end
  end
end

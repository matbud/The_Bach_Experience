class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end

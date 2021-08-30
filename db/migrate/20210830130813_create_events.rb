class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :gender
      t.string :theme
      t.string :location
      t.string :status
      t.date :start_date
      t.date :end_date
      t.integer :budget
      t.integer :number_of_guests
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

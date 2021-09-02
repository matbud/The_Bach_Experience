class AddLocationToHotels < ActiveRecord::Migration[6.0]
  def change
    add_column :hotels, :location, :string
  end
end

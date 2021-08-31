class AddColumnToHotels < ActiveRecord::Migration[6.0]
  def change
    add_column :hotels, :theme, :string
  end
end

class AddColumnToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :theme, :string
  end
end

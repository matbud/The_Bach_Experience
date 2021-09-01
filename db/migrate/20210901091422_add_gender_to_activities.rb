class AddGenderToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :gender, :string
  end
end

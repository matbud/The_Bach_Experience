class AddPhotoHotelandActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :hotels, :photo_name, :string
    add_column :activities, :photo_name, :string
  end
end

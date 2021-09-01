class AddChosenToRecommendations < ActiveRecord::Migration[6.0]
  def change
    add_column :recommendations, :chosen, :boolean, default: false, null: false
  end
end

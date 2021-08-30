class CreateRecommendedActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :recommended_activities do |t|
      t.references :activity, null: false, foreign_key: true
      t.references :recommendation, null: false, foreign_key: true

      t.timestamps
    end
  end
end

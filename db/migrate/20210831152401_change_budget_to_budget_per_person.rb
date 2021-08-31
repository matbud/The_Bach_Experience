class ChangeBudgetToBudgetPerPerson < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :budget, :budget_per_person
  end
end

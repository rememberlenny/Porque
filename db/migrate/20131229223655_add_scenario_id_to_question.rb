class AddScenarioIdToQuestion < ActiveRecord::Migration
  def change
    add_column(:questions, :scenario_id, :integer)
  end
end

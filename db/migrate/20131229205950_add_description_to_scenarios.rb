class AddDescriptionToScenarios < ActiveRecord::Migration
  def change
    add_column :scenarios, :description, :string
  end
end

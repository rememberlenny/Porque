class AddImageToScenarios < ActiveRecord::Migration
  def change
    add_column :scenarios, :image, :string
  end
end

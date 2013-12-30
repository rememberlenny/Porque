class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :media
      t.text :questionprompt
      t.integer :scenario_id
      t.belongs_to :scenario

      t.timestamps
    end
  end
end

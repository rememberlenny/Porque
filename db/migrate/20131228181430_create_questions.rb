class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :media
      t.text :question

      t.timestamps
    end
  end
end

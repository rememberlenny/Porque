class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answeroption
      t.integer :question_id
      t.belongs_to :question

      t.timestamps
    end
  end
end

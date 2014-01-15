class AddNextQuestionToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :nextQuestion, :integer
  end
end

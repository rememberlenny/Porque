class QuestionsController < ApplicationController

  def new
    @question = Quesion.new
  end

  def create
    @question = Quesion.new(question_params)
  end

end

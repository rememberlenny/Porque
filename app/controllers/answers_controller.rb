class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
  end

  def show
    @answer = Answer.find(params[:id])
    redirect_to edit_question_path(:id =>@answer.question_id)
  end

  def update
    @answer = Answer.find(params[:id])

    if @answer.update(params[:answer].permit(:answeroption ))
      redirect_to edit_question_path(question_id:@answer.question_id)
    else
      render 'edit'
    end
  end

  def edit
    @answer = Answer.find(params[:id])
  end

end

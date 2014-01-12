class QuestionsController < ApplicationController

  def new
    @scenario = Scenario.find(params[:scenario_id])
    @question = @scenario.questions.new
  end

  def create
    @question = Scenario.questions.new(question_params)
  end

  def index
    @scenario = Scenario.find(params[:scenario_id])
    @questions = @scenario.questions.all
  end

  def update
    @scenario = Scenario.find(params[:scenario_id])
    @question = @scenario.questions.find(params[:id])

    if @question.update(params[:question].permit(:questionprompt, :text))
      redirect_to scenario_question_path
    else
      render 'edit'
    end
  end

  def show
    @scenario = Scenario.find(params[:scenario_id])
    @question = @scenario.questions.find(params[:id])
  end

  def edit
    @scenario = Scenario.find(params[:scenario_id])
    @question = @scenario.questions.find(params[:id])

  end

end

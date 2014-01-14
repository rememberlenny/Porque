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
    respond_to do |format|
      format.html
      format.json
    end
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(params[:question].permit(:questionprompt, :text ))
      redirect_to question_path
    else
      render 'edit'
    end
  end

  def show
    @question = Question.find(params[:id])
    @scenario = Scenario.find(@question.scenario_id)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def edit
    @question   = Question.find(params[:id])
    @questions  = Question.all
  end

end

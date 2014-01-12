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

  def show
    @scenario = Scenario.find(params[:scenario_id])
    @questions = @scenario.questions.all
  end

  def edit
    @scenario = Scenario.find(params[:scenario_id])
    @question = @scenario.questions.find(params[:id])

  end

end

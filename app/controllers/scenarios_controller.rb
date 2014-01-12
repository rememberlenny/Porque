class ScenariosController < ApplicationController

  def new
    @scanario = Scenario.new
  end

  def create
    @scanario = Scenario.new(scenario_params)
  end

  def show

  end

  def question
    @scenario = Scenario.find(params[:scenario_id])
    questionPosition = params[:id].to_i
    @questions = @scenario.questions.load
    @questionLength = @questions.length
    if @questionLength - 1 < questionPosition
      questionPosition = 0
    end
    @questionPosition = questionPosition
    @question = @questions[questionPosition]
    @answer = Question.find(@question.id).answers

    respond_to do |format|
      format.html
      format.json
    end
  end
end

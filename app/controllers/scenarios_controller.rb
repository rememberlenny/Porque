class ScenariosController < ApplicationController

  def new
    @scanario = Scenario.new
  end

  def create
    @scanario = Scenario.new(scenario_params)
  end

  def show
    redirect_to scenariointro_path(:scenario_id=>params[:id], :id=>0, :fq=>1)
    # fq is first question
    @scenario = Scenario.all
    # respond_to do |format|
    #   format.html
    #   format.json
    # end
    # redirect_to  scenario_question_path(:scenario_id => params[:id])
  end

  def intro
    @scenario = Scenario.find(params[:scenario_id])
    @firstQuestionId = @scenario.questions.first.id
    if params[:id].to_i >= @scenario.intro.length
      redirect_to scenarioquestion_path(:scenario_id=>params[:scenario_id], :id=>@firstQuestionId, :fq=>1)
    else
      @intro = @scenario.intro[params[:id].to_i]
    end
    @introlength = @scenario.intro.length
    @next = params[:id].to_i+1
  end

  def question
    if(params[:id].to_i == 0)
      redirect_to root_path
    elsif(params[:fq] == 1)
      @question = @scenario.questions.first
      params[:first_question] = 0
      @answer = Question.find(@question.id).answers
    else
      @question = Question.find(params[:id])
      @answer = Question.find(@question.id).answers
    end
  end
end

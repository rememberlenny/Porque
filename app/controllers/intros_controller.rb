class IntrosController < ApplicationController

  def show
    @intro = Intro.find(params[:id])
  end

  def index
    @intros = Intro.all
  end

end

class PagesController < ApplicationController

  def index
    @scenarios = Scenario.all
  end

  def about

  end

  def contact

  end


end

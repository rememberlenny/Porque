class PagesController < ApplicationController

  def index
    @scenarios = Scenario.all
  end



end

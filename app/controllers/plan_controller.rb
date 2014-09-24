class PlanController < ApplicationController

  def index
    @plans = Plan.all
  end

  def show
    @plan = Plan.find_by_name(params[:name])
  end


end

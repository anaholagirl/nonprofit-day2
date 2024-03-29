class NonprofitsController < ApplicationController

  def index
    @nonprofits = Nonprofit.all
  end


  def new
    @nonprofit = Nonprofit.new
  end

  def create
    @nonprofit = Nonprofit.new(nonprofit_params)
    if @nonprofit.save
      respond_to do |format|
        format.html { redirect_to nonprofits_path, notice: "Your Nonprofit has been created!" }
        format.js
      end
    end
  end

  def show
    @nonprofit = Nonprofit.find(params[:id])
  end

  def edit
    @nonprofit = Nonprofit.find(params[:id])
  end

  def update
    @nonprofit = Nonprofit.find(params[:id])
    if @nonprofit.update(nonprofit_params)
      respond_to do |format|
        format.html { redirect_to nonprofits_path, notice: "Your Nonprofit has been updated!" }
        format.js
      end
    end
  end

  def destroy
    @nonprofit = Nonprofit.find(params[:id])
    @nonprofit.destroy
    redirect_to nonprofits_path
  end

  private
  def nonprofit_params
    params.require(:nonprofit).permit(:name)
  end


end

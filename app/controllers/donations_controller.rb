class DonationsController < ApplicationController

  def index
    @donations = Donation.all
  end

  def new
    @nonprofit = Nonprofit.find(params[:nonprofit_id])
    @donation = Donation.new
  end

  def create
    @nonprofit = Nonprofit.find(params[:nonprofit_id])
    @donation =  @nonprofit.donations.new(donation_params)
    if @donation.save
      respond_to do |format|
        format.html { redirect_to nonprofit_path(@nonprofit) notice: "Thank you for your donation!"}
        format.js
      end
    end
  end
end

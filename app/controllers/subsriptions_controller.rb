class SubscriptionsController < ApplicationController

  def index
    @subscriptions = Subscription.all
  end

  def new
    @subscription = Subscription.new
  end

  def create
    @nonprofit = Nonprofit.find(params[:nonprofit_id])
    @subscription = @nonprofit.subscriptions.new(subscription_params)
    if @subscription.save
      flash[:notice] = 'Subscription created'
      redirect_to nonprofit_path(@nonprofit)
    else
      render 'new'
    end
  end

  private
  def subscription_params
    params.require(:subscription).permit(:user_id, :nonprofit_id, :plan_id)
  end


end

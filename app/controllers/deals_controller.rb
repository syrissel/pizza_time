class DealsController < ApplicationController
  def index
    @deals = Deal.all
    if current_user
      @orders = Order.where(user_id: current_user.id)
    end
  end

  def show
    @deal = Deal.find(params[:id])
  end
end

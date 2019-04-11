class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      if !current_user
        Order.new
      else
        Order.create!(user_id: current_user.id)
      end
    end
  end
end

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
        province = Province.find(current_user.province_id)
        tax = province.gst + province.pst + province.hst
        Order.create!(user_id: current_user.id, tax: tax)
      end
    end
  end
end

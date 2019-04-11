class CartsController < ApplicationController
  def show
    @pizza_orders = current_order.pizza_orders
  end

  # def total
  #   tax = 1

  #   if current_user
  #     province = Province.find(current_user.province_id)
  #     tax = province.pst + province.gst + province.hst
  #   end
  # end
end

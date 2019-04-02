class PizzaOrdersController < ApplicationController
  def create
    @order = current_order
    @pizza_order = @order.pizza_orders.new(pizza_order_params)
    @order.save
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @pizza_order = @order.pizza_orders.find(params[:id])
    @pizza_order.update_attributes(pizza_order_params)
    @pizza_orders = @order.pizza_orders
  end

  def destroy
    @order = current_order
    @pizza_order = @order.pizza_orders.find(params[:id])
    @pizza_order.destroy
    @pizza_orders = @order.pizza_orders
  end

  private
  def pizza_order_params
    params.require(:pizza_order).permit(:quantity, :pizza_id)
  end
end

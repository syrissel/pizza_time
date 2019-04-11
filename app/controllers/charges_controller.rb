class ChargesController < ApplicationController
  
  def index
  end
  
  def new
  end

  def create
    # Amount in cents
    @amount = (current_order.total * 100).to_i

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'cad',
    })

    current_user.stripe_user_id = customer.id.to_s
    current_user.save
    current_order.stripe_charge_id = charge.id.to_s
    current_order.save
    

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end

class Order < ApplicationRecord
  has_many :users
  has_many :pizza_orders
  belongs_to :order_status
  has_many :pizzas, :through => :pizza_orders
  before_save :update_subtotal
  before_save :update_total
  #before_validation :update_subtotal, on: :create

  def subtotal
    pizza_orders.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum 
  end

  def tax
    if !self[:tax].nil?
      tax = subtotal * self[:tax]
    else
      tax = subtotal * 0.05
    end
  end

  def total
    subtotal + tax
  end

  private

  def update_total
    self[:total] = total
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end

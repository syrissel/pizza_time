class Order < ApplicationRecord
  belongs_to :user
  has_many :pizza_orders
  has_many :pizzas, :through => :pizza_orders
  before_save :update_subtotal
  #before_validation :update_subtotal, on: :create

  def subtotal
    pizza_orders.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

  def total
    subtotal * tax
  end

  private

  def update_subtotal
    self[:subtotal] = subtotal
  end
end

class Pizza < ApplicationRecord
  validates :name, :size, :price, presence: true
  validates :price, numericality: { only_integer: true }
  has_many :orders, :through => :pizza_orders
  has_many :toppings, :through => :pizza_toppings
  has_many :deals, :through => :pizza_deals
end

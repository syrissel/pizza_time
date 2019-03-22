class Pizza < ApplicationRecord
  validates :name, :size, :price, presence: true
  validates :price, numericality: { only_integer: true }

  has_many :pizza_orders
  has_many :orders, :through => :pizza_orders

  has_many :pizza_toppings
  has_many :toppings, :through => :pizza_toppings

  has_many :pizza_deals
  has_many :deals, :through => :pizza_deals

  has_one :image

  accepts_nested_attributes_for :toppings
end

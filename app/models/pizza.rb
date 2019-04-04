class Pizza < ApplicationRecord
  validates :name, :size, :price, presence: true

  has_many :pizza_orders
  has_many :orders, :through => :pizza_orders

  has_many :pizza_toppings
  has_many :toppings, :through => :pizza_toppings

  has_many :pizza_deals
  has_many :deals, :through => :pizza_deals

  has_one :image

  accepts_nested_attributes_for :toppings

  #default_scope { where(active: true) }

  max_paginates_per 4
end

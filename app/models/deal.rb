class Deal < ApplicationRecord
  validates :name, :price, presence: true
  validates :price, numericality: { only_integer: true }

  has_many :pizza_deals
  has_many :pizzas, :through => :pizza_deals

  accepts_nested_attributes_for :pizzas
end

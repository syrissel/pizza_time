class AddQuantityToPizzaOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :pizza_orders, :quantity, :integer, default: 1
  end
end

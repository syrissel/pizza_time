class AddColumnsToPizzaOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :pizza_orders, :unit_price, :decimal, precision: 12, scale: 3
    add_column :pizza_orders, :quantity, :integer
    add_column :pizza_orders, :total_price, :decimal, precision: 12, scale: 3
  end
end

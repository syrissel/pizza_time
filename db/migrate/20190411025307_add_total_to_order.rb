class AddTotalToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :total, :decimal, precision: 12, scale: 3
  end
end

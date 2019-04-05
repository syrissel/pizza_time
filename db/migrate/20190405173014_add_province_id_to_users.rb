class AddProvinceIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :province_id, :integer
  end
end

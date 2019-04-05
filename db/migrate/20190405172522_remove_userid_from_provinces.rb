class RemoveUseridFromProvinces < ActiveRecord::Migration[5.2]
  def change
    remove_column :provinces, :user_id
  end
end

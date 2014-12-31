class RemoveColumnFromPhoto < ActiveRecord::Migration
  def change
    remove_column :photos, :products_id, :integer
  end
end

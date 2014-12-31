class AddIdsToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :sub_group_id, :integer
    add_column :pictures, :category_id, :integer
  end
end

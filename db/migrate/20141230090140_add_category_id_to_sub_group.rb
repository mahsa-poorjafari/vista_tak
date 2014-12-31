class AddCategoryIdToSubGroup < ActiveRecord::Migration
  def change
    add_column :sub_groups, :category_id, :integer
  end
end

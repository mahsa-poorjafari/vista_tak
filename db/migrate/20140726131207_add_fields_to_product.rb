class AddFieldsToProduct < ActiveRecord::Migration
  def change
    add_column :products, :title_fa, :string
    add_column :products, :description_fa, :text
    add_column :products, :category_id, :integer
  end
end

class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :description_en
      t.string :description_fa
      t.integer :category_id
      t.integer :sub_group_id
      t.integer :products_id

      t.timestamps
    end
  end
end

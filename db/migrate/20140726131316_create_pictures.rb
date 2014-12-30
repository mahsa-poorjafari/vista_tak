class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :description_en
      t.string :description_fa
      t.integer :product_id

      t.timestamps
    end
  end
end

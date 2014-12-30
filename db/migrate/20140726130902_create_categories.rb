class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title_en
      t.string :title_fa
      t.text :description_en
      t.text :description_fa

      t.timestamps
    end
  end
end
